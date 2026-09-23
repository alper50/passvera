import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    registerClipboardChannel()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  private func registerClipboardChannel() {
    guard let registrar = registrar(forPlugin: "PassveraClipboard") else { return }
    let channel = FlutterMethodChannel(
      name: "com.passvera.app/clipboard",
      binaryMessenger: registrar.messenger()
    )
    channel.setMethodCallHandler { call, result in
      guard call.method == "copySensitive" else {
        result(FlutterMethodNotImplemented)
        return
      }
      guard
        let args = call.arguments as? [String: Any],
        let text = args["text"] as? String,
        let clearAfterMs = args["clearAfterMs"] as? NSNumber
      else {
        result(FlutterError(code: "bad_args", message: "text and clearAfterMs are required", details: nil))
        return
      }
      // The OS removes the item at expirationDate even while the app is
      // suspended; localOnly keeps it off Universal Clipboard.
      UIPasteboard.general.setItems(
        [["public.utf8-plain-text": text]],
        options: [
          .localOnly: true,
          .expirationDate: Date().addingTimeInterval(clearAfterMs.doubleValue / 1000),
        ]
      )
      result(nil)
    }
  }
}
