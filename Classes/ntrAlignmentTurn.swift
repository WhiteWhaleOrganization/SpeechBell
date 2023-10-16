 
 
 
 
 
 

import UIKit

public class ntrAlignmentTurn: UILabel {
    public var hshCancelSeek:UIEdgeInsets = .zero
    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: hshCancelSeek))
    }

    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let hshCancelSeek = hshCancelSeek
        var fmlrOfficeBand = super.textRect(forBounds: bounds.inset(by: hshCancelSeek), limitedToNumberOfLines: numberOfLines)
        fmlrOfficeBand.origin.x -= hshCancelSeek.left
        fmlrOfficeBand.origin.y -= hshCancelSeek.top
        fmlrOfficeBand.size.width += (hshCancelSeek.left + hshCancelSeek.right)
        fmlrOfficeBand.size.height += (hshCancelSeek.top + hshCancelSeek.bottom)
        return fmlrOfficeBand
    }
}
