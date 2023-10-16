 
 
 
 
 
 

import UIKit

public class tgglReferenceFree: lrnRespondCall {
    public var chrAmountCard:kypdDisappearHard?
    public var rejectCoreRepeat = "1"
    public var semlessDecideCode = false
    public var restreBusyAffect = false
    public var memryLookPaste:CAGradientLayer!
    public lazy var crselPageSplit:CGSize = {
        let tbleFrameInvocation = (preserveScreenDialog - 40.auto()) / 3.0 - 1
        return CGSizeMake(tbleFrameInvocation, tbleFrameInvocation * 160.0 / 112.0)
    }()
    
    public lazy var cmpleEqualSalary:UIImageView = {
        return UIImageView()
            .pnnTracePath(true)
            .frscrePeriodZero(6.auto())
            .descrbeDetailObserve(true)
            .estercIncrementCaret(.scaleAspectFill)
            .bckspceRedrawBoth(.CnfrmRoomRange)
    }()
    
    public lazy var cntctAmountPlus:tchConfusePlus = {
        let cntctAmountPlus = tchConfusePlus(type: .custom)
            .frscrePeriodZero(6)
            .wldcrdPromptIdea([.layerMinXMinYCorner,.layerMaxXMaxYCorner])
        return cntctAmountPlus
    }()
    
    public lazy var frmAlignSequence:UIImageView = {
        return UIImageView().pnnTracePath(true).estercIncrementCaret(.scaleAspectFit).dscssPriceDeselected(certnAgainProxy("268"))
    }()
    
    public lazy var ppsteKindDigit:UIImageView = {
        return UIImageView().dscssPriceDeselected(certnAgainProxy("243"))
    }()
    
    public lazy var needTypeProgress:UILabel = {
        let keywrdTrueBegin = UILabel()
        return keywrdTrueBegin
    }()
    
    public lazy var cntrlWordShell:UILabel = {
        let keywrdTrueBegin = UILabel().referenceCellPunch(.NtrdceSeriesBoth).predctCrossKeep(2).ccrcyOnceInvent(.systemFont(ofSize: 8, weight: .regular))
        return keywrdTrueBegin
    }()
    
    public lazy var ltestTellDepend:UIView = {
        let ltestTellDepend = UIView()
        return ltestTellDepend
    }()
    
    public lazy var nterveneRedrawScroll:UILabel = {
        let nterveneRedrawScroll = UILabel()
        return nterveneRedrawScroll
    }()
       
    public override func keywrdNameSince() {
        addSubview(cmpleEqualSalary)
        addSubview(frmAlignSequence)
        addSubview(cntrlWordShell)
        addSubview(ppsteKindDigit)
        addSubview(needTypeProgress)
        addSubview(ltestTellDepend)
        addSubview(cntctAmountPlus)
        ltestTellDepend.addSubview(nterveneRedrawScroll)
        ltestTellDepend.frame = CGRect(x: 0, y: 0, width: crselPageSplit.width, height: 24)
        let fcsDecoderBound = CAGradientLayer()
        fcsDecoderBound.colors = [
          UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor,
          UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        ]
        fcsDecoderBound.locations = [0.070292, 1]
        fcsDecoderBound.startPoint = CGPoint(x:0.5, y: 0)
        fcsDecoderBound.endPoint = CGPoint(x: 0.5, y: 1)
        fcsDecoderBound.frame = ltestTellDepend.frame
        fcsDecoderBound.position = ltestTellDepend.center
        self.memryLookPaste = fcsDecoderBound
        ltestTellDepend.layer.insertSublayer(fcsDecoderBound, at: 0)
        
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(prdctSevenImmediate)))
        setNeedsUpdateConstraints()
    }

    public override func updateConstraints() {
        super.updateConstraints()
        frmAlignSequence.isHidden = !semlessDecideCode
        cntctAmountPlus.isHidden = !restreBusyAffect
        needTypeProgress.isHidden = restreBusyAffect
        cmpleEqualSalary.snp.remakeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.size.equalTo(crselPageSplit)
        }

        frmAlignSequence.snp.remakeConstraints { make in
            if !frmAlignSequence.isHidden{
                make.center.equalTo(cmpleEqualSalary)
                make.size.equalTo(CGSize(width: 31, height: 31))
            }
        }
        
        cntrlWordShell.snp.remakeConstraints { make in
            make.left.equalToSuperview().offset(5.auto())
            make.right.equalToSuperview().offset(-5.auto())
            make.top.equalTo(cmpleEqualSalary.snp.bottom).offset(5.auto())
            make.bottom.lessThanOrEqualToSuperview()
        }
        
        needTypeProgress.snp.remakeConstraints { make in
            if !needTypeProgress.isHidden{
                make.left.equalTo(5)
                make.top.equalTo(5)
            }
        }
        
        cntctAmountPlus.snp.remakeConstraints { make in
            if !cntctAmountPlus.isHidden{
                make.top.left.equalToSuperview()
                make.width.height.equalTo(30.auto())
            }
        }
        
        ppsteKindDigit.snp.remakeConstraints { make in
            make.right.equalTo(-5)
            make.centerY.equalTo(needTypeProgress.snp.centerY)
            make.top.greaterThanOrEqualTo(4)
            make.size.equalTo(CGSizeMake(34, 16))
        }
        
        ltestTellDepend.snp.remakeConstraints { make in
            make.left.right.equalTo(cmpleEqualSalary)
            make.bottom.equalTo(cmpleEqualSalary.snp.bottom)
            make.height.equalTo(24)
        }
        
        nterveneRedrawScroll.snp.remakeConstraints { make in
            make.centerY.equalTo(ltestTellDepend.snp.centerY)
            make.right.equalTo(-5)
        }
        
        if memryLookPaste != nil{
            memryLookPaste.frame = CGRectMake(0, 0, crselPageSplit.width + 1, 24)
        }
    }
}
