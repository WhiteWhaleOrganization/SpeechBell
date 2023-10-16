 
 
 
 
 
 

import UIKit

open class rstRedefineYear: lrnRespondCall {
    public var nmersRemainWeek = false
    open func mgnetcDeleteStep(){
        nmersRemainWeek = true
        self.isHidden = false
    }
    
    @objc open func ttlKnowNegate(){
        nmersRemainWeek = false
        self.isHidden = true
        self.removeFromSuperview()
    }
}
