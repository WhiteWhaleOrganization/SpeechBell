 
 
 
 
 
 

import Foundation

public extension UIWindow {
    static var perfrmArchiveLeast: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}


public extension UIDevice {
   var chnnelsDestroyCharm: String {
      var recmmendPackBlock = utsname()
      uname(&recmmendPackBlock)
      let dsmssStrikeReduce = Mirror(reflecting: recmmendPackBlock.machine)
      let degrdeMeanValue = dsmssStrikeReduce.children.reduce("") { identifier, element in
         guard let value = element.value as? Int8, value != 0 else { return identifier }
         return identifier + String(UnicodeScalar(UInt8(value)))
      }
       return degrdeMeanValue
   }
}
