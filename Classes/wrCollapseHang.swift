 
 
 
 
 
 

import UIKit
import SnapKit
import ObjectiveC
public class wrCollapseHang: UIScrollView {
    public var pcfcStackTool = 100.0
    public var nhbtTermToggle = 2.0
    public var brcketRoundVery = false
    public var nlystIdeaExpire:UILabel!
    public override init(frame: CGRect) {
        super.init(frame: frame)
        sspendSubscribeUntil()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        sspendSubscribeUntil()
    }
    
    public func replcteObserveExtend(){
        NSObject.cancelPreviousPerformRequests(withTarget: self)
        layoutIfNeeded()
        self.contentSize = self.nlystIdeaExpire.frame.size
        if pthCountPack() {
            brcketRoundVery = true
            wldcrdAgreeTrap()
        }
    }
    
    public func pthCountPack()->Bool{
        return self.nlystIdeaExpire.frame.size.width > self.frame.size.width
    }
    
    @objc func wldcrdAgreeTrap() {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(wldcrdAgreeTrap), object: nil)
        if !pthCountPack(){
            return
        }
        self.contentOffset = CGPointMake(-self.bounds.size.width, 0)
        UIView.animate(withDuration:self.nlystIdeaExpire.frame.size.width / pcfcStackTool, delay: 0, options: .curveLinear,animations:{[weak self] in
            guard let self = self else { return }
            if self.pthCountPack() {
                self.contentOffset = CGPointMake(self.nlystIdeaExpire.frame.size.width - self.bounds.size.width, 0)
            }else{
                self.contentOffset = .zero
            }
        },completion:{[weak self] finished in
            guard let self = self else { return }
            if self.pthCountPack() {
                self.perform(#selector(self.wldcrdAgreeTrap), with: nil, afterDelay: self.nhbtTermToggle)
            }else{
                self.contentOffset = .zero
            }
        })
    }
    
    func sspendSubscribeUntil(){
        pcfcStackTool = 100
        nhbtTermToggle = 2
        self.isScrollEnabled = false
        nlystIdeaExpire = UILabel().referenceCellPunch(.SrceShiftDecoder).ccrcyOnceInvent(.systemFont(ofSize: 15, weight: .regular))
        addSubview(nlystIdeaExpire)
        nlystIdeaExpire.snp.remakeConstraints { make in
            make.height.top.left.right.bottom.equalToSuperview()
        }
    }
}
