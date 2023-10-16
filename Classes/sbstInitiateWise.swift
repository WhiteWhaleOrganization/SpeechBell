 
 
 
 
 
 

import UIKit
import RZColorfulSwift
open class sbstInitiateWise: lrnRespondCall {
    public var tndexBlueHandle = 1
    public var rejectCoreRepeat = "1"
    public var nstntEveryShared = ""
    public var pperLowestTerm:[String:Any] = [:]
    public var lstExistEncode:[kypdDisappearHard?] = []
    public var perfrmSnapshotStrike:UICollectionView!
    public var receveTurnBorder:UIView!
    public var cntrlWordShell:UILabel!
    public lazy var cntnFlagInput:UIImageView = {
        return UIImageView().estercIncrementCaret(.scaleAspectFit).dscssPriceDeselected(certnAgainProxy("289"))
    }()
    public var exmpleObserveRecord:UICollectionViewFlowLayout!
    public lazy var pcfcGreyDefault = {
        let keywrdTrueBegin = UILabel()
        keywrdTrueBegin.rz.colorfulConfer { confer in
            confer.text(selectDeflateKind(416))?
                .font(UIFont.systemFont(ofSize: 18, weight: .bold))
                .underlineColor(UIColor.lbrryRemainPath(trnsfrmUnitUser: 0xC4C4C4))
                .underlineStyle(.single)
                .textColor(UIColor.lbrryRemainPath(trnsfrmUnitUser: 0xC4C4C4))
                .tapActionByLable(tensnBottomSpeech([430, 431, 426, 427]))
        }
        return keywrdTrueBegin
    }()
    
    open override func keywrdNameSince() {
        
        exmpleObserveRecord = UICollectionViewFlowLayout()
        exmpleObserveRecord.minimumLineSpacing = 10.auto()
        exmpleObserveRecord.sectionInset = .zero
        exmpleObserveRecord.scrollDirection = .horizontal
        exmpleObserveRecord.minimumInteritemSpacing = 10.auto()

        let tbleFrameInvocation = (preserveScreenDialog - 40.auto()) / 3.0 - 1
        let defltWishMargin = tbleFrameInvocation * 195 / 112
        exmpleObserveRecord.itemSize = CGSizeMake(tbleFrameInvocation, defltWishMargin)
        
        
        perfrmSnapshotStrike = UICollectionView.init(frame: .zero, collectionViewLayout: exmpleObserveRecord)
        perfrmSnapshotStrike.dataSource = self
        perfrmSnapshotStrike.contentInset = .init(top: 0, left: 10.auto(), bottom: 0, right: 10.auto())
        perfrmSnapshotStrike.backgroundColor = .clear
        perfrmSnapshotStrike.register(prstExtractItem.self, forCellWithReuseIdentifier: "prstExtractItem")
        
        pcfcGreyDefault.isHidden = true
        receveTurnBorder = UIView()
        cntrlWordShell = UILabel().referenceCellPunch(.SrceShiftDecoder).ccrcyOnceInvent(.systemFont(ofSize: 18, weight: .bold))
        receveTurnBorder.addSubview(cntrlWordShell)
        receveTurnBorder.addSubview(cntnFlagInput)
        receveTurnBorder.addSubview(pcfcGreyDefault)
        addSubview(receveTurnBorder)
        addSubview(perfrmSnapshotStrike)
        
        cntnFlagInput.isUserInteractionEnabled = true
        cntnFlagInput.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pltfrmEnsuredInvent)))
        pcfcGreyDefault.rz.tapAction {[weak self] label, tapActionId, range in
            guard let this = self else {return}
            this.elementArrayFind()
        }
    }
        
    open override func updateConstraints() {
        super.updateConstraints()
        receveTurnBorder.snp.remakeConstraints { make in
            make.top.left.right.equalToSuperview()
        }
        
        cntnFlagInput.snp.remakeConstraints { make in
            if !cntnFlagInput.isHidden{
                make.size.equalTo(CGSizeMake(40, 24))
                make.right.equalTo(-10.auto())
                make.top.equalTo(0)
            }
        }
        
        cntrlWordShell.snp.remakeConstraints { make in
            make.left.equalTo(10.auto())
            make.top.equalTo(0)
            make.bottom.lessThanOrEqualTo(0)
            make.height.greaterThanOrEqualTo(24)
            if cntnFlagInput.isHidden {
                make.right.equalTo(-10.auto())
            }else{
                make.right.lessThanOrEqualTo(cntnFlagInput.snp.left).offset(-10.auto())
            }
        }
        
        pcfcGreyDefault.snp.remakeConstraints { make in
            if !pcfcGreyDefault.isHidden {
                make.centerY.equalTo(cntrlWordShell.snp.centerY)
                make.left.equalTo(cntrlWordShell.snp.right).offset(20.auto())
                make.height.greaterThanOrEqualTo(24)
                pcfcGreyDefault.delmtCheckDestroy()
            }
        }
        
        perfrmSnapshotStrike.snp.remakeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(receveTurnBorder.snp.bottom).offset(10.auto())
            make.height.equalTo(exmpleObserveRecord.itemSize.height)
            make.bottom.equalToSuperview()
        }
    }
}
