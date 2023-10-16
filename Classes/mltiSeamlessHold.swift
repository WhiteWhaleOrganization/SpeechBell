 
 
 
 
 
 

import UIKit

public class mltiSeamlessHold: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 15.0,*) {
            let explctTapeSignal = UINavigationBarAppearance()
            explctTapeSignal.backgroundEffect = nil
            explctTapeSignal.backgroundColor = UIColor.lbrryRemainPath(trnsfrmUnitUser: 0x1A1C21)
            explctTapeSignal.shadowColor = nil;
            explctTapeSignal.shadowImage = UIImage()
            explctTapeSignal.titleTextAttributes = [.foregroundColor: UIColor.white ,.font : UIFont.systemFont(ofSize: 18, weight: .bold)]
            self.navigationBar.standardAppearance = explctTapeSignal
            self.navigationBar.scrollEdgeAppearance = explctTapeSignal
        } else {
            self.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white ,.font : UIFont.systemFont(ofSize: 18, weight: .bold)]
            self.navigationBar.barTintColor = UIColor.lbrryRemainPath(trnsfrmUnitUser: 0x1A1C21)
            self.navigationBar.shadowImage = UIImage()
            self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        }
        self.delegate = self
    }
    
    open override var childForStatusBarStyle: UIViewController? {
        return self.navigationController?.topViewController
    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
