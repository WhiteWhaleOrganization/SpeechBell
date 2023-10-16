 
 
 
 
 
 

import UIKit

public class crsAccuracySize: UIImageView {

    override init(image: UIImage?) {
        super.init(image: image)
        contentMode = .scaleAspectFit
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentMode = .scaleAspectFit
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentMode = .scaleAspectFit
    }
}
