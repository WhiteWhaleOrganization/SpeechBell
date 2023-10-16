 
 
 
 
 
 

import Foundation
public extension UITextField {
    var decryptBrownTree: Bool {
        if let chnnelCallMotif = self.text, !chnnelCallMotif.isEmpty {
             return false
        }
        return true
    }
}
