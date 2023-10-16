 
 
 
 
 
 

import UIKit

public class mrginCompanyFace: shrInquiryRoll {

    var replceLogicWait = ""
    lazy var cmpreBrushHeap:UILabel = {
        let cmpreBrushHeap = UILabel().referenceCellPunch(.SrceShiftDecoder).cnsleNameCare(.center).ccrcyOnceInvent(.systemFont(ofSize: 16))
        return cmpreBrushHeap
    }()
    
    public override func shdwUnsafeValidate() {
        contentView.addSubview(cmpreBrushHeap)
    }
    
    public override func updateConstraints() {
        super.updateConstraints()
        cmpreBrushHeap.snp.remakeConstraints { make in
            make.edges.equalToSuperview()
            make.height.equalTo(53.auto())
        }
    }
    
    public override func derelctAlphaCombine() {
        cmpreBrushHeap.text = replceLogicWait
        contentView.backgroundColor = .CverReachName
    }

}
