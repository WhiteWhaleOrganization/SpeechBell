 
 
 
 
 
 

import UIKit

open class strmContrastGain: UICollectionView {
    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        sspendSubscribeUntil()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        sspendSubscribeUntil()
    }
    
    public func sspendSubscribeUntil(){
        keyboardDismissMode = .onDrag
        automaticallyAdjustsScrollIndicatorInsets = false
    }
}
