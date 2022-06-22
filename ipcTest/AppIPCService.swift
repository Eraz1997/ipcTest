import Foundation

// MARK: - Service protocol

@objc(AppService) protocol AppService {
  func changeColor() 
}

// MARK: - Service implementation

class AppServiceImplementation: NSObject, AppService {
  func changeColor() {
    // TODO: write code
  }
}

// MARK: - Service delegate

class ServiceDelegate: NSObject, NSXPCListenerDelegate {
  func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool {
    newConnection.exportedInterface = NSXPCInterface(with: AppService.self)
    newConnection.exportedObject = AppServiceImplementation()
    newConnection.resume()
    return true
  }

  func observe() {
//    let darwinCenter = CFNotificationCenterGetDarwinNotifyCenter()
//    CFNotificationCenterAddObserver(
//      <#T##center: CFNotificationCenter!##CFNotificationCenter!#>,
//      <#T##observer: UnsafeRawPointer!##UnsafeRawPointer!#>,
//      <#T##callBack: CFNotificationCallback!##CFNotificationCallback!##(CFNotificationCenter?, UnsafeMutableRawPointer?, CFNotificationName?, UnsafeRawPointer?, CFDictionary?) -> Void#>,
//      <#T##name: CFString!##CFString!#>,
//      <#T##object: UnsafeRawPointer!##UnsafeRawPointer!#>,
//      <#T##suspensionBehavior: CFNotificationSuspensionBehavior##CFNotificationSuspensionBehavior#>
//    )
//
  }
}
