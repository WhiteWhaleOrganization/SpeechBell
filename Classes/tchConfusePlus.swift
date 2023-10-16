 
 
 
 
 
 

import UIKit

public class tchConfusePlus: UIButton {
    public override var isHighlighted: Bool{
        set{
                    
        }
        get {
            return false
        }
    }
    
    public var chnnelsHyphenLike:Timer?
    public var ptternRollQuery = 0
    public var cmpnentsRestMargin = 0
    public var pertnRangePlay = false

    public func prfleDebugFree(crrgeHostQuick:Int){
        cmpnentsRestMargin = crrgeHostQuick
        ptternRollQuery = crrgeHostQuick
        isEnabled = false
        if chnnelsHyphenLike != nil {
            chnnelsHyphenLike?.invalidate()
            chnnelsHyphenLike = nil
        }
        chnnelsHyphenLike = Timer(timeInterval: 1, repeats: true, block: {[weak self] timer in
            guard let this = self else { return }
            this.estercFallCommand()
        })
        RunLoop.current.add(chnnelsHyphenLike!, forMode: .common)
        estercFallCommand()
        pertnRangePlay = true
    }
    
    public func estercFallCommand(){
        let string = tensnBottomSpeech([408, 427, 371, 441, 427, 436, 426, 358, 444, 427, 440, 431, 428, 431, 425, 423, 442, 431, 437, 436, 358, 425, 437, 426, 427])
        if ptternRollQuery > 0 {
            ptternRollQuery -= 1
            if isEnabled {
                isEnabled  = false
            }
            self.setTitle("\(string) ( \(ptternRollQuery) )", for: .normal)
            self.setTitleColor(.lbrryRemainPath(trnsfrmUnitUser: 0x828386), for: .normal)
        }else{
            if !self.isEnabled {
                self.isEnabled = true
            }
            self.setTitle(string, for: .normal)
            self.setTitleColor(.lbrryRemainPath(trnsfrmUnitUser: 0x3CDEF4), for: .normal)
            self.chnnelsHyphenLike?.invalidate()
            self.chnnelsHyphenLike = nil
            self.pertnRangePlay = false
        }
    }
    
    deinit{
        if chnnelsHyphenLike != nil {
            chnnelsHyphenLike?.invalidate()
            chnnelsHyphenLike = nil
        }
    }
}
