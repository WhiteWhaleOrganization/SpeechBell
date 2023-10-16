 
 
 
 
 
 

import Foundation

extension mltiSeamlessHold:UINavigationControllerDelegate,UIGestureRecognizerDelegate {
    
    public func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        var recrsveFullReady = false
        if viewController is rdrwFragmentDisc {
            let prchseSplitImplement:rdrwFragmentDisc = viewController as! rdrwFragmentDisc
            self.navigationBar.isTranslucent = false
            if prchseSplitImplement.spervewCellSmall() == .degrdePrependWorld {
                recrsveFullReady = true
            }else{
                if #available(iOS 15.0,*) {
                    self.navigationBar.standardAppearance.backgroundColor = prchseSplitImplement.ltencyStaticSafe()
                    self.navigationBar.scrollEdgeAppearance?.backgroundColor = prchseSplitImplement.ltencyStaticSafe()
                } else {
                    self.navigationBar.barTintColor = prchseSplitImplement.ltencyStaticSafe()
                }
            }
            self.interactivePopGestureRecognizer?.delegate = self
            self.setNavigationBarHidden(recrsveFullReady, animated: true)
        }  else{
            if #available(iOS 15.0,*) {
                self.navigationBar.standardAppearance.backgroundColor = .white
                self.navigationBar.scrollEdgeAppearance?.backgroundColor = .white
            } else {
                self.navigationBar.barTintColor = .white
            }
            self.interactivePopGestureRecognizer?.delegate = self
            self.setNavigationBarHidden(false, animated: true)
        }
    }
    
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        return self.children.count > 1
    }
}
