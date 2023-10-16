 
 
 
 
 
 

import UIKit

public class mdlCompanyUpon: UITableView {
    
    public override init(frame: CGRect,style:UITableView.Style) {
        super.init(frame: frame,style:style)
        sspendSubscribeUntil()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        sspendSubscribeUntil()
    }
    
    func sspendSubscribeUntil(){
        separatorStyle = .none
        estimatedRowHeight = 44
        keyboardDismissMode = .onDrag
        estimatedSectionFooterHeight = 0
        estimatedSectionHeaderHeight = 0
        contentInsetAdjustmentBehavior = .never
        automaticallyAdjustsScrollIndicatorInsets = false
        if #available(iOS 15.0, *) {
            sectionHeaderTopPadding = 0
        }
        backgroundColor = .BndngPlainMultiplied
        showsHorizontalScrollIndicator = false
        tableHeaderView = UIView(frame: .zero)
        tableFooterView = UIView(frame: .zero)
    }
}
