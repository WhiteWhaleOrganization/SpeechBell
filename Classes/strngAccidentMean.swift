 
 
 
 
 
 

import UIKit

public class strngAccidentMean: rdrwFragmentDisc {
    var nmersCharmCard = 0
    var lstExistEncode : [String] = []
    var plTaskSelect: DescendExpandSure?
    lazy var extensnMathBatch:UIDatePicker = {
        let extensnMathBatch = UIDatePicker()
        extensnMathBatch.datePickerMode = .date
        extensnMathBatch.maximumDate = Date()
        extensnMathBatch.isHidden = true
        if #available(iOS 13.4, *) {
            extensnMathBatch.preferredDatePickerStyle = .wheels
        }
        extensnMathBatch.overrideUserInterfaceStyle = .dark
        return extensnMathBatch
    }()
    
    lazy var pgrdeOccupyFree:UIPickerView = {
        let pgrdeOccupyFree = UIPickerView()
        pgrdeOccupyFree.delegate = self
        pgrdeOccupyFree.dataSource = self
        pgrdeOccupyFree.isHidden = true
        return pgrdeOccupyFree
    }()
    
    lazy var certnAreaClear:mdlCompanyUpon = {
        let certnAreaClear = mdlCompanyUpon(frame: .zero, style: .plain)
        certnAreaClear.isScrollEnabled = false
        certnAreaClear.backgroundColor = .black
        certnAreaClear.isHidden = true
        certnAreaClear.delegate = self
        certnAreaClear.dataSource = self
        return certnAreaClear
    }()
    
    lazy var receveTurnBorder:UIView = {
        let receveTurnBorder = UIView().ccdentPairScreen(true)
        let prevsFlattenBound = UIView().bckspceRedrawBoth(.lbrryRemainPath(trnsfrmUnitUser: 0x2D2F33))
        receveTurnBorder.addSubview(prevsFlattenBound)
        prevsFlattenBound.snp.remakeConstraints { make in
            make.bottom.left.right.equalTo(receveTurnBorder)
            make.height.equalTo(0.5)
        }
        return receveTurnBorder
    }()
    
    lazy var cmmentTreeField : tchConfusePlus = {
        let nstrctHelpThough = tchConfusePlus()
            .ccdentAssignDisk(.SrceShiftDecoder)
            .therefreComeAngle(selectDeflateKind(170))
            .szeDictionaryRefresh(self, action: #selector(lbmEnsuredSubset))
        return nstrctHelpThough
    }()
    
    lazy var ndexChangeImage : tchConfusePlus = {
        let nstrctHelpThough = tchConfusePlus()
            .ccdentAssignDisk(.SrceShiftDecoder)
            .therefreComeAngle(selectDeflateKind(132))
            .szeDictionaryRefresh(self, action: #selector(refrmtNumberDefine))
        return nstrctHelpThough
    }()
    
    
    public override func keywrdNameSince() {
        nfSortRotate()
        ltencyPerformSlash.addSubview(receveTurnBorder)
        ltencyPerformSlash.addSubview(certnAreaClear)
        ltencyPerformSlash.addSubview(pgrdeOccupyFree)
        ltencyPerformSlash.addSubview(extensnMathBatch)
    }
    
    public override func cmmndSameBlacklist() {
        self.receveTurnBorder.isHidden = false
        receveTurnBorder.addSubview(cmmentTreeField)
        receveTurnBorder.addSubview(ndexChangeImage)
        if nmersCharmCard == 0 {
            cmmentTreeField.setTitleColor(.lbrryRemainPath(trnsfrmUnitUser: 0x828386), for: .normal)
            ltencyPerformSlash.addSubview(cmmentTreeField)
            receveTurnBorder.isHidden = true
            certnAreaClear.isHidden = false
        } else if nmersCharmCard == 1 {
            pgrdeOccupyFree.isHidden = false
        } else if nmersCharmCard == 2 {
            extensnMathBatch.isHidden = false
        }
        view.setNeedsUpdateConstraints()
    }
    
    public override func updateViewConstraints() {
        super.updateViewConstraints()
        receveTurnBorder.snp.remakeConstraints { make in
            if !receveTurnBorder.isHidden {
                make.height.equalTo(44.auto())
                make.left.top.right.equalToSuperview()
            }
        }
        
        cmmentTreeField.snp.remakeConstraints { make in
            if receveTurnBorder.isHidden {
                make.top.equalTo(certnAreaClear.snp.bottom)
                make.left.right.equalToSuperview()
                make.height.equalTo(53.auto())
                make.bottom.lessThanOrEqualTo(-pctreRateRemain)
            }else{
                make.left.equalTo(10.auto())
                make.top.bottom.equalToSuperview()
            }
        }
        
        ndexChangeImage.snp.remakeConstraints { make in
            if !ndexChangeImage.isHidden {
                make.right.equalTo(-10.auto())
                make.top.bottom.equalToSuperview()
            }
        }
        
        certnAreaClear.snp.remakeConstraints { make in
            if !certnAreaClear.isHidden {
                make.top.left.right.equalToSuperview()
                make.height.equalTo(53.auto() * lstExistEncode.count)
                make.bottom.lessThanOrEqualTo(-pctreRateRemain)
            }
        }
        
        pgrdeOccupyFree.snp.remakeConstraints { make in
            if !pgrdeOccupyFree.isHidden {
                make.top.equalTo(self.receveTurnBorder.snp.bottom)
                make.left.right.equalToSuperview()
                make.height.equalTo(200.auto())
                make.bottom.lessThanOrEqualTo(-pctreRateRemain)
            }
        }
        
        extensnMathBatch.snp.remakeConstraints { make in
            if !extensnMathBatch.isHidden {
                make.top.equalTo(self.receveTurnBorder.snp.bottom)
                make.left.right.equalToSuperview()
                make.height.equalTo(200.auto())
                make.bottom.lessThanOrEqualTo(-pctreRateRemain)
            }
        }
    }
    
    @objc func lbmEnsuredSubset(){
        self.dismiss(animated: false)
    }
    
    @objc func refrmtNumberDefine(){
        self.dismiss(animated: false)
        if nmersCharmCard == 2 {
            if let plTaskSelect = plTaskSelect {
                plTaskSelect(extensnMathBatch.date)
            }
        } else {
            if let plTaskSelect = plTaskSelect {
                plTaskSelect(lstExistEncode[pgrdeOccupyFree.selectedRow(inComponent: 0)])
            }
        }
    }
    
}
