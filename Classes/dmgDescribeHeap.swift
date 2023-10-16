 
 
 
 
 
 

import Foundation

extension UIViewController {
    
    open func replceRemakeArrow(perteDeselectedScope:String,cnfseLigatureTitle:Bool = false) {
        guard let extrctFoundFlow = self.navigationController else {
            return
        }
        guard extrctFoundFlow.viewControllers.count > 1 || cnfseLigatureTitle else {
            return
        }
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: perteDeselectedScope)?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(elmnteImageLeading))
        self.navigationItem.hidesBackButton = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = nil;
    }
    
    @objc open func elmnteImageLeading() {
        let reserveStuffFact = self.navigationController?.viewControllers
        if let reserveStuffFact = reserveStuffFact {
            if 1 <= reserveStuffFact.count && 0 < reserveStuffFact.firstIndex(of: self)! {
                self.navigationController?.popViewController(animated: true)
            } else {
                self.dismiss(animated: true, completion: nil)
            }
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
