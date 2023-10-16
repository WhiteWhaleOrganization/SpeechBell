 
 
 
 
 
 

import Foundation

public typealias ExtensnCordAccept = ((UIButton)->Void)

public extension UIButton {
    
    private struct HTClassAssociatedKeys {
        static var regexLessCharm = "elementFloppyScroll"
        static var fctryCustomNear = "cnsltSingleCase"
    }
    
    private var regexLessCharm: ExtensnCordAccept? {
        set {
            objc_setAssociatedObject(self, &HTClassAssociatedKeys.regexLessCharm, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get {
            return objc_getAssociatedObject(self, &HTClassAssociatedKeys.regexLessCharm) as? ExtensnCordAccept
        }
    }
    
    private var begnPlayLowest: TimeInterval {
        set {
            objc_setAssociatedObject(self, &HTClassAssociatedKeys.fctryCustomNear, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
        get {
            return objc_getAssociatedObject(self, &HTClassAssociatedKeys.fctryCustomNear) as? TimeInterval ?? 0
        }
    }
    
    @objc private func reqreTypePerform(nterpretTapePause: UIButton) {
        regexLessCharm?(nterpretTapePause)
        isEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + begnPlayLowest) { [weak self] in
            self?.isEnabled = true
        }
    }
    
    func welcmePathLocate(_ thsndClosestHyphen: TimeInterval = 0, sbvewsLongItem: @escaping ExtensnCordAccept) {
        addTarget(self, action: #selector(reqreTypePerform(nterpretTapePause:)) , for: .touchUpInside)
        begnPlayLowest = thsndClosestHyphen
        regexLessCharm = sbvewsLongItem
    }
}
