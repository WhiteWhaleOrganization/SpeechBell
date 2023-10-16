 
 
 
 
 
 

import UIKit

public class mgicTape: lrnRespondCall {

    public var exclsveWideUnless = false
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.exclsveWideUnless {
            self.endEditing(true)
        }
    }
}
