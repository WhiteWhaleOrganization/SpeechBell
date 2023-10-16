 
 
 
 
 
 

import UIKit

public class qDiscussLeft: lrnRespondCall {

    lazy var redefneCallCharge:UIImageView = {
        return UIImageView().estercIncrementCaret(.scaleAspectFill).descrbeDetailObserve(true).dscssPriceDeselected(certnAgainProxy("236"))
    }()
    
    lazy var cntrlWordShell:UILabel = {
        let keywrdTrueBegin = UILabel()
            .pertnCardMonth(selectDeflateKind(975))
            .referenceCellPunch(.SrceStillKind)
            .ccrcyOnceInvent(.systemFont(ofSize: 16, weight: .bold))
        return keywrdTrueBegin
    }()
    
    lazy var cnceptEdgeSlide:UILabel = {
        let keywrdTrueBegin = UILabel()
            .pertnCardMonth(tensnBottomSpeech([362, 376, 372, 383, 383]))
            .referenceCellPunch(.SrceStillKind)
            .ccrcyOnceInvent(.systemFont(ofSize: 18, weight: .heavy))
        return keywrdTrueBegin
    }()
    
    lazy var prctceActivityTeam:UILabel = {
        let keywrdTrueBegin = UILabel()
            .pertnCardMonth(tensnBottomSpeech([358, 428, 437, 440, 358, 442, 430, 427, 358, 375, 358, 435, 437, 436, 442, 430]))
            .referenceCellPunch(.SrceStillKind)
            .ccrcyOnceInvent(.systemFont(ofSize: 10, weight: .regular))
        return keywrdTrueBegin
    }()
    
    public override func keywrdNameSince() {
        addSubview(redefneCallCharge)
        addSubview(cntrlWordShell)
        addSubview(cnceptEdgeSlide)
        addSubview(prctceActivityTeam)
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(textFirstFree)))
        if crrgeCircleSwap{
            cntrlWordShell.font = .systemFont(ofSize: 32, weight: .bold)
            prctceActivityTeam.font = .systemFont(ofSize: 20, weight: .regular)
            cnceptEdgeSlide.font = .systemFont(ofSize: 36, weight: .heavy)
        }
    }
    
    @objc func textFirstFree(){
        frcWelcomeLine.predctCourseSign()
    }
    
    public override func cmmndSameBlacklist() {
        if let welcmeDrumAware = lvlProduceRoot.default.lnggeTestData{
            self.cnceptEdgeSlide.text = drivWork.trverseMacroPack(nywhereHugeOften: welcmeDrumAware)
        }else{
            drivWork.default.encryptSaveClasses(nstntEveryShared: WldcrdEjectWarn, mgnetcReachName: { [weak self] welcmeDrumAware in
                guard let this = self else { return }
                if let welcmeDrumAware = welcmeDrumAware{
                    DispatchQueue.main.async {
                        this.cnceptEdgeSlide.text = drivWork.trverseMacroPack(nywhereHugeOften: welcmeDrumAware)
                    }
                }
            })
        }
    }
    
    public override func updateConstraints() {
        super.updateConstraints()
        let defltWishMargin = (preserveScreenDialog - 20.auto()) * 60.0 / 355.0
        redefneCallCharge.snp.remakeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.height.equalTo((preserveScreenDialog - 20.auto()) * 60.0 / 355.0)
            make.left.equalToSuperview().offset(10.auto())
            make.right.equalToSuperview().offset(-10.auto())
        }
        let ndctrRemarkFetch = defltWishMargin / 60.0
        cntrlWordShell.snp.remakeConstraints { make in
            make.left.equalTo(redefneCallCharge.snp.left).offset(10.auto())
            make.top.equalToSuperview().offset( 8.0 * ndctrRemarkFetch)
        }
        cnceptEdgeSlide.snp.remakeConstraints { make in
            make.left.equalTo(cntrlWordShell.snp.left)
            make.bottom.equalTo(redefneCallCharge.snp.bottom).offset(-8.0 * ndctrRemarkFetch)
        }
        prctceActivityTeam.snp.remakeConstraints { make in
            make.left.equalTo(cnceptEdgeSlide.snp.right).offset(3.auto())
            make.bottom.equalTo(redefneCallCharge.snp.bottom).offset(-10.0 * ndctrRemarkFetch)
        }
    }

}
