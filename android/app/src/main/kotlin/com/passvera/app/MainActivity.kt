package com.passvera.app

import android.app.Activity
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

    private var screenCaptureChannel: MethodChannel? = null

    // Activity.ScreenCaptureCallback (API 34+); typed loosely so older
    // devices never resolve the class.
    private var screenCaptureCallback: Any? = null

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
        screenCaptureChannel = MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            "com.passvera.app/screen_capture",
        ).also { channel ->
            channel.setMethodCallHandler { call, result ->
                when (call.method) {
                    "allow" -> result.success(allowScreenCapture())
                    "block" -> {
                        blockScreenCapture()
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }
        }
    }

    /**
     * Lifts FLAG_SECURE for the recovery key screens, only where each
     * screenshot is reported so the app can warn right after it (API 34+).
     * Elsewhere the screen stays protected and this returns false.
     */
    private fun allowScreenCapture(): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return false
        if (screenCaptureCallback == null) {
            val callback = Activity.ScreenCaptureCallback {
                screenCaptureChannel?.invokeMethod("captured", null)
            }
            registerScreenCaptureCallback(mainExecutor, callback)
            screenCaptureCallback = callback
        }
        // FLAG_SECURE also kept the words out of the recents thumbnail.
        setRecentsScreenshotEnabled(false)
        window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
        return true
    }

    private fun blockScreenCapture() {
        window.setFlags(
            WindowManager.LayoutParams.FLAG_SECURE,
            WindowManager.LayoutParams.FLAG_SECURE,
        )
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            setRecentsScreenshotEnabled(true)
            (screenCaptureCallback as? Activity.ScreenCaptureCallback)?.let {
                unregisterScreenCaptureCallback(it)
            }
            screenCaptureCallback = null
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
