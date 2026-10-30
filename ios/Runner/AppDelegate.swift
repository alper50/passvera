import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
  private var screenshotObserver: NSObjectProtocol?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    registerClipboardChannel()
    registerScreenCaptureChannel()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  /// iOS never blocks screenshots; on the recovery key screens it reports
  /// them so the app can warn right after one is taken.
  private func registerScreenCaptureChannel() {
    guard let registrar = registrar(forPlugin: "PassveraScreenCapture") else { return }
    let channel = FlutterMethodChannel(
      name: "com.passvera.app/screen_capture",
      binaryMessenger: registrar.messenger()
    )
    channel.setMethodCallHandler { [weak self] call, result in
      guard let self = self else { return }
      switch call.method {
      case "allow":
        if self.screenshotObserver == nil {
          self.screenshotObserver = NotificationCenter.default.addObserver(
            forName: UIApplication.userDidTakeScreenshotNotification,
            object: nil,
            queue: .main
          ) { _ in
            channel.invokeMethod("captured", arguments: nil)
          }
        }
        result(true)
      case "block":
        if let observer = self.screenshotObserver {
          NotificationCenter.default.removeObserver(observer)
          self.screenshotObserver = nil
        }
        result(nil)
      default:
        result(FlutterMethodNotImplemented)
      }
    }
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
