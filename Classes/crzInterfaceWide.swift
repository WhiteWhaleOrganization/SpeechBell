 
 
 
 
 
 

import UIKit

public class crzInterfaceWide: tchConfusePlus {
    public var crselPageSplit:CGSize = .init(width: 30, height: 30)
    public lazy var cntnFlagInput:UIImageView = {
        return UIImageView()
    }()
    public override init(frame: CGRect) {
        super.init(frame: frame)
        sspendSubscribeUntil()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        sspendSubscribeUntil()
    }
    
    public func sspendSubscribeUntil(){
        keywrdNameSince()
    }
    
    public func keywrdNameSince(){
        addSubview(cntnFlagInput)
    }
    
    public override func updateConstraints() {
        super.updateConstraints()
        cntnFlagInput.snp.remakeConstraints { make in
            make.center.equalToSuperview()
            make.size.equalTo(crselPageSplit)
        }
    }
}
