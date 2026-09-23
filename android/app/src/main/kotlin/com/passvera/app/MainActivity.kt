package com.passvera.app

import android.content.ClipData
import android.content.ClipDescription
import android.content.ClipboardManager
import android.content.Context
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.PersistableBundle
import android.view.WindowManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val clipboardChannel = "com.passvera.app/clipboard"
    private val clearHandler = Handler(Looper.getMainLooper())
    private var pendingClear: Runnable? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Hide vault content from recents thumbnails, screenshots and casting.
        window.setFlags(
            WindowManager.LayoutParams.FLAG_SECURE,
            WindowManager.LayoutParams.FLAG_SECURE,
        )
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, clipboardChannel)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "copySensitive" -> {
                        val text = call.argument<String>("text")
                        val clearAfterMs = call.argument<Number>("clearAfterMs")?.toLong()
                        if (text == null || clearAfterMs == null) {
                            result.error("bad_args", "text and clearAfterMs are required", null)
                        } else {
                            copySensitive(text, clearAfterMs)
                            result.success(null)
                        }
                    }
                    else -> result.notImplemented()
                }
            }
    }

    override fun onDestroy() {
        pendingClear?.let { clearHandler.removeCallbacks(it) }
        super.onDestroy()
    }

    private fun copySensitive(text: String, clearAfterMs: Long) {
        val clipboard = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val clip = ClipData.newPlainText("Passvera", text)
        // Keeps the value out of clipboard previews / keyboard suggestions.
        clip.description.extras = PersistableBundle().apply {
            val key = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                ClipDescription.EXTRA_IS_SENSITIVE
            } else {
                "android.content.extra.IS_SENSITIVE"
            }
            putBoolean(key, true)
        }
        clipboard.setPrimaryClip(clip)

        pendingClear?.let { clearHandler.removeCallbacks(it) }
        val clear = Runnable { clearIfStillOurs(clipboard, text) }
        pendingClear = clear
        clearHandler.postDelayed(clear, clearAfterMs)
    }

    private fun clearIfStillOurs(clipboard: ClipboardManager, copied: String) {
        pendingClear = null
        // Android 10+ hides the clipboard from background apps (null here).
        // If we cannot verify, clear anyway: a secret must not outlive its TTL.
        val current = clipboard.primaryClip?.getItemAt(0)?.coerceToText(this)?.toString()
        if (current != null && current != copied) return

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            clipboard.clearPrimaryClip()
        } else {
            clipboard.setPrimaryClip(ClipData.newPlainText("", ""))
        }
    }
}
