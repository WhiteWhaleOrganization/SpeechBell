 
 
 
 
 
 

import UIKit

public class mgicViolateView: brwsThroughRoll {
    public var lbmRemoveCause = ""
    public var chrcterHoldDesire = ""
    public override func mapping(mapper: HelpingMapper) {
        mapper <<< self.lbmRemoveCause <-- tensnBottomSpeech([433, 427, 447, 375])
        mapper <<< self.chrcterHoldDesire <-- tensnBottomSpeech([444, 423, 434, 375])
    }
}
