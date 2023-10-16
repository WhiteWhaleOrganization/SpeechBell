 
 
 
 
 
 

import Foundation

public extension UIView {
    public func delmtCheckDestroy(explnFieldScreen:Bool = true){
        self.setContentCompressionResistancePriority(explnFieldScreen ? .required : .fittingSizeLevel, for: .horizontal)
        self.setContentHuggingPriority(explnFieldScreen ? .required : .fittingSizeLevel, for: .horizontal)
    }
    
    public func cntnUnlikeHold(explnFieldScreen:Bool = true){
        self.setContentCompressionResistancePriority(explnFieldScreen ? .required : .fittingSizeLevel, for: .vertical)
        self.setContentHuggingPriority(explnFieldScreen ? .required : .fittingSizeLevel, for: .vertical)
    }
    
    public func sterskWorkTitle(selectnBoldUpdate: [Any],rtneMicroCreate:CGPoint = CGPoint(x: 0, y: 0),cheveYellowLeft:CGPoint = CGPoint(x: 1, y: 0)) {
        layoutIfNeeded()
        var selectValuePlus: CAGradientLayer!
        emplyeUpdateRemark()
        selectValuePlus = CAGradientLayer()
        selectValuePlus.frame = self.layer.bounds
        selectValuePlus.startPoint = rtneMicroCreate
        selectValuePlus.endPoint = cheveYellowLeft
        selectValuePlus.colors = selectnBoldUpdate
        selectValuePlus.cornerRadius = self.layer.cornerRadius
        selectValuePlus.masksToBounds = true
        self.layer.insertSublayer(selectValuePlus, at: 0)
        self.layer.masksToBounds = false
    }
    
    public func emplyeUpdateRemark() {
        if let eventFormatMenu = self.layer.sublayers {
            for memryLookPaste in eventFormatMenu {
                if memryLookPaste.isKind(of: CAGradientLayer.self) {
                    memryLookPaste.removeFromSuperlayer()
                }
            }
        }
    }
}

public extension UIStackView {
    
    func defltHereMinus(sbscrptWeaklySymbol: UIView) {
        removeArrangedSubview(sbscrptWeaklySymbol)
        sbscrptWeaklySymbol.removeFromSuperview()
    }
    
    func brcketRemarkWide() {
        arrangedSubviews.forEach { (view) in
            defltHereMinus(sbscrptWeaklySymbol: view)
        }
    }
    
}
