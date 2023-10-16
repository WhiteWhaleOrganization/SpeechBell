 
 
 
 
 
 

import UIKit

public class srchControlThen: lrnRespondCall {
    public var verllWrongDrag = CGSizeMake(16, 16)
    public var preserveInvokeRegard = UIEdgeInsets(top: 10.auto(), left: 10.auto(), bottom: 0, right: 0)
    public var smmryShortSkip =  UIEdgeInsets(top: 13.auto(), left: 4.auto(), bottom: 13.auto(), right: 0)
    public var cmpletedSignAlpha = 2
    public var bndryMuchDesign = 0
    public var refreshngDeskPseudo = false
    public lazy var versnSkipTitle:UIStackView = {
        let versnSkipTitle = UIStackView()
        return versnSkipTitle
    }()
    public lazy var keywrdTrueBegin = {
        let keywrdTrueBegin = UILabel().referenceCellPunch(.lbrryRemainPath(trnsfrmUnitUser: 0xC1C1C1)).ccrcyOnceInvent(.systemFont(ofSize: 15))
        return keywrdTrueBegin
    }()
    
    public lazy var cnImplementUsage = {
        let cnImplementUsage = UIImageView().estercIncrementCaret(.scaleAspectFit).descrbeDetailObserve(true)
        return cnImplementUsage
    }()
    
    func ndstryStatusSystem(){
        setNeedsUpdateConstraints()
    }
    
    public override func keywrdNameSince() {
        addSubview(keywrdTrueBegin)
        addSubview(cnImplementUsage)
    }
    
    public override func updateConstraints() {
        super.updateConstraints()
        if bndryMuchDesign == 0 {
            if refreshngDeskPseudo {
                addSubview(versnSkipTitle)
                versnSkipTitle.snp.remakeConstraints { make in
                    make.center.equalToSuperview()
                    make.top.equalTo(smmryShortSkip.top)
                    make.bottom.equalTo(-smmryShortSkip.bottom)
                }
                versnSkipTitle.addArrangedSubview(cnImplementUsage)
                versnSkipTitle.addArrangedSubview(keywrdTrueBegin)
                cnImplementUsage.snp.updateConstraints { make in
                    make.size.equalTo(verllWrongDrag)
                }
                versnSkipTitle.spacing = smmryShortSkip.left
            }else{
                 
                cnImplementUsage.snp.remakeConstraints { make in
                    make.size.equalTo(verllWrongDrag)
                    make.centerY.equalToSuperview()
                    make.left.equalTo(preserveInvokeRegard.left)
                }
                
                keywrdTrueBegin.snp.remakeConstraints { make in
                    make.left.equalTo(cnImplementUsage.snp.right).offset(smmryShortSkip.left)
                    make.top.equalTo(smmryShortSkip.top)
                    make.bottom.equalTo(-smmryShortSkip.bottom)
                    make.right.equalTo(-smmryShortSkip.right)
                }
            }
        }
        
        else if bndryMuchDesign == 1 {
             
            keywrdTrueBegin.snp.remakeConstraints { make in
                make.left.equalTo(smmryShortSkip.left)
                make.top.equalTo(smmryShortSkip.top)
                make.bottom.equalTo(-smmryShortSkip.bottom)
            }
            
            cnImplementUsage.snp.remakeConstraints { make in
                make.size.equalTo(verllWrongDrag)
                make.centerY.equalToSuperview()
                make.right.equalTo(-preserveInvokeRegard.right)
                make.left.equalTo(keywrdTrueBegin.snp.right).offset(preserveInvokeRegard.left)
            }
            
        }
         
        else if bndryMuchDesign == 2 {
            cnImplementUsage.snp.remakeConstraints { make in
                make.top.equalTo(preserveInvokeRegard.top)
                make.centerX.equalToSuperview()
                make.size.equalTo(verllWrongDrag)
            }
            keywrdTrueBegin.snp.remakeConstraints { make in
                make.left.equalTo(smmryShortSkip.left)
                make.right.equalTo(-smmryShortSkip.right)
                make.top.equalTo(cnImplementUsage.snp.bottom).offset(smmryShortSkip.top)
                make.bottom.equalTo(-smmryShortSkip.bottom)
            }
        }
    }
}
