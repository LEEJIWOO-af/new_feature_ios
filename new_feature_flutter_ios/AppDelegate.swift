import UIKit
import Flutter
import FlutterPluginRegistrant

@main
class AppDelegate: FlutterAppDelegate {
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        flutterEngine.run(withEntrypoint: nil, initialRoute: "/custom1")
        
        GeneratedPluginRegistrant.register(with: self.flutterEngine)
        
        setupMethodChannel()
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func setupMethodChannel() {
        let methodChannel = FlutterMethodChannel(
            name: "com.example.new_feature_android/custom1",
            binaryMessenger: flutterEngine.binaryMessenger
        )
        
        methodChannel.setMethodCallHandler { (call, result) in
            switch call.method {
            case "getUserInfo":
                let userList = UserInfo.getDummyUserList()
                let userMaps = userList.map { $0.toMap() }
                result(userMaps)
                
            case "getCurrentUser":
                let currentUser = UserInfo.getDummyUserList().first!
                result(currentUser.toMap())
                
            default:
                result(FlutterMethodNotImplemented)
            }
        }
    }
}
