

import UIKit
import ObjectiveC

public extension UIView {
    
    private struct WKToastKeys {
        static var timer        = "com.toast-swift.timer"
        static var duration     = "com.toast-swift.duration"
        static var point        = "com.toast-swift.point"
        static var completion   = "com.toast-swift.completion"
        static var activeToasts = "com.toast-swift.activeToasts"
        static var activityView = "com.toast-swift.activityView"
        static var queue        = "com.toast-swift.queue"
    }
    
    private class WKToastCompletionWrapper {
        let completion: ((Bool) -> Void)?
        
        init(_ completion: ((Bool) -> Void)?) {
            self.completion = completion
        }
    }
    
    private enum WKToastError: Error {
        case missingParameters
    }
    
    private var activeToasts: NSMutableArray {
        get {
            if let activeToasts = objc_getAssociatedObject(self, &WKToastKeys.activeToasts) as? NSMutableArray {
                return activeToasts
            } else {
                let activeToasts = NSMutableArray()
                objc_setAssociatedObject(self, &WKToastKeys.activeToasts, activeToasts, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                return activeToasts
            }
        }
    }
    
    private var queue: NSMutableArray {
        get {
            if let queue = objc_getAssociatedObject(self, &WKToastKeys.queue) as? NSMutableArray {
                return queue
            } else {
                let queue = NSMutableArray()
                objc_setAssociatedObject(self, &WKToastKeys.queue, queue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                return queue
            }
        }
    }
    
    func wk_makeToast(_ message: String?, duration: TimeInterval = WKToastManager.shared.duration, position: WKToastPosition = WKToastManager.shared.position, title: String? = nil, image: UIImage? = nil, style: WKToastStyle = WKToastManager.shared.style, completion: ((_ didTap: Bool) -> Void)? = nil) {
        do {
            let toast = try wk_toastViewForMessage(message, title: title, image: image, style: style)
            wk_showToast(toast, duration: duration, position: position, completion: completion)
        } catch WKToastError.missingParameters {
            print("Error: message, title, and image are all nil")
        } catch {}
    }
    
    func wk_makeToast(_ message: String?, duration: TimeInterval = WKToastManager.shared.duration, point: CGPoint, title: String?, image: UIImage?, style: WKToastStyle = WKToastManager.shared.style, completion: ((_ didTap: Bool) -> Void)?) {
        do {
            let toast = try wk_toastViewForMessage(message, title: title, image: image, style: style)
            wk_showToast(toast, duration: duration, point: point, completion: completion)
        } catch WKToastError.missingParameters {
            print("Error: message, title, and image cannot all be nil")
        } catch {}
    }
    
    func wk_showToast(_ toast: UIView, duration: TimeInterval = WKToastManager.shared.duration, position: WKToastPosition = WKToastManager.shared.position, completion: ((_ didTap: Bool) -> Void)? = nil) {
        let point = position.wk_centerPoint(forToast: toast, inSuperview: self)
        wk_showToast(toast, duration: duration, point: point, completion: completion)
    }
    
    func wk_showToast(_ toast: UIView, duration: TimeInterval = WKToastManager.shared.duration, point: CGPoint, completion: ((_ didTap: Bool) -> Void)? = nil) {
        objc_setAssociatedObject(toast, &WKToastKeys.completion, WKToastCompletionWrapper(completion), .OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        if WKToastManager.shared.isQueueEnabled, activeToasts.count > 0 {
            objc_setAssociatedObject(toast, &WKToastKeys.duration, NSNumber(value: duration), .OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            objc_setAssociatedObject(toast, &WKToastKeys.point, NSValue(cgPoint: point), .OBJC_ASSOCIATION_RETAIN_NONATOMIC);
            
            queue.add(toast)
        } else {
            wk_showToast(toast, duration: duration, point: point)
        }
    }
    
    func wk_hideToast() {
        guard let activeToast = activeToasts.firstObject as? UIView else { return }
        wk_hideToast(activeToast)
    }
    
    func wk_hideToast(_ toast: UIView) {
        guard activeToasts.contains(toast) else { return }
        wk_hideToast(toast, fromTap: false)
    }
    
    func wk_hideAllToasts(includeActivity: Bool = false, clearQueue: Bool = true) {
        if clearQueue {
            wk_clearToastQueue()
        }
        
        activeToasts.compactMap { $0 as? UIView }
                    .forEach { wk_hideToast($0) }
        
        if includeActivity {
            wk_hideToastActivity()
        }
    }
    
    func wk_clearToastQueue() {
        queue.removeAllObjects()
    }
    
    func wk_makeToastActivity(_ position: WKToastPosition) {
        
        guard objc_getAssociatedObject(self, &WKToastKeys.activityView) as? UIView == nil else { return }
        
        let toast = wk_createToastActivityView()
        let point = position.wk_centerPoint(forToast: toast, inSuperview: self)
        wk_makeToastActivity(toast, point: point)
    }
    
    func wk_makeToastActivity(_ point: CGPoint) {
        
        guard objc_getAssociatedObject(self, &WKToastKeys.activityView) as? UIView == nil else { return }
        
        let toast = wk_createToastActivityView()
        wk_makeToastActivity(toast, point: point)
    }
    
    func wk_hideToastActivity() {
        if let toast = objc_getAssociatedObject(self, &WKToastKeys.activityView) as? UIView {
            UIView.animate(withDuration: WKToastManager.shared.style.fadeDuration, delay: 0.0, options: [.curveEaseIn, .beginFromCurrentState], animations: {
                toast.alpha = 0.0
            }) { _ in
                toast.removeFromSuperview()
                objc_setAssociatedObject(self, &WKToastKeys.activityView, nil, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
    
    private func wk_makeToastActivity(_ toast: UIView, point: CGPoint) {
        toast.alpha = 0.0
        toast.center = point
        
        objc_setAssociatedObject(self, &WKToastKeys.activityView, toast, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        
        self.addSubview(toast)
        
        UIView.animate(withDuration: WKToastManager.shared.style.fadeDuration, delay: 0.0, options: .curveEaseOut, animations: {
            toast.alpha = 1.0
        })
    }
    
    private func wk_createToastActivityView() -> UIView {
        let style = WKToastManager.shared.style
        
        let activityView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: style.activitySize.width, height: style.activitySize.height))
        activityView.backgroundColor = style.activityBackgroundColor
        activityView.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin, .flexibleTopMargin, .flexibleBottomMargin]
        activityView.layer.cornerRadius = style.cornerRadius
        
        if style.displayShadow {
            activityView.layer.shadowColor = style.shadowColor.cgColor
            activityView.layer.shadowOpacity = style.shadowOpacity
            activityView.layer.shadowRadius = style.shadowRadius
            activityView.layer.shadowOffset = style.shadowOffset
        }
        
        let activityIndicatorView = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicatorView.center = CGPoint(x: activityView.bounds.size.width / 2.0, y: activityView.bounds.size.height / 2.0)
        activityView.addSubview(activityIndicatorView)
        activityIndicatorView.color = style.activityIndicatorColor
        activityIndicatorView.startAnimating()
        
        return activityView
    }

    private func wk_showToast(_ toast: UIView, duration: TimeInterval, point: CGPoint) {
        toast.center = point
        toast.alpha = 0.0
        
        if WKToastManager.shared.isTapToDismissEnabled {
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(UIView.wk_handleToastTapped(_:)))
            toast.addGestureRecognizer(recognizer)
            toast.isUserInteractionEnabled = true
            toast.isExclusiveTouch = true
        }
        
        activeToasts.add(toast)
        self.addSubview(toast)
        
        UIView.animate(withDuration: WKToastManager.shared.style.fadeDuration, delay: 0.0, options: [.curveEaseOut, .allowUserInteraction], animations: {
            toast.alpha = 1.0
        }) { _ in
            let timer = Timer(timeInterval: duration, target: self, selector: #selector(UIView.wk_toastTimerDidFinish(_:)), userInfo: toast, repeats: false)
            RunLoop.main.add(timer, forMode: .common)
            objc_setAssociatedObject(toast, &WKToastKeys.timer, timer, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private func wk_hideToast(_ toast: UIView, fromTap: Bool) {
        if let timer = objc_getAssociatedObject(toast, &WKToastKeys.timer) as? Timer {
            timer.invalidate()
        }
        
        UIView.animate(withDuration: WKToastManager.shared.style.fadeDuration, delay: 0.0, options: [.curveEaseIn, .beginFromCurrentState], animations: {
            toast.alpha = 0.0
        }) { _ in
            toast.removeFromSuperview()
            self.activeToasts.remove(toast)
            
            if let wrapper = objc_getAssociatedObject(toast, &WKToastKeys.completion) as? WKToastCompletionWrapper, let completion = wrapper.completion {
                completion(fromTap)
            }
            
            if let nextToast = self.queue.firstObject as? UIView, let duration = objc_getAssociatedObject(nextToast, &WKToastKeys.duration) as? NSNumber, let point = objc_getAssociatedObject(nextToast, &WKToastKeys.point) as? NSValue {
                self.queue.removeObject(at: 0)
                self.wk_showToast(nextToast, duration: duration.doubleValue, point: point.cgPointValue)
            }
        }
    }
    
    @objc
    private func wk_handleToastTapped(_ recognizer: UITapGestureRecognizer) {
        guard let toast = recognizer.view else { return }
        wk_hideToast(toast, fromTap: true)
    }
    
    @objc
    private func wk_toastTimerDidFinish(_ timer: Timer) {
        guard let toast = timer.userInfo as? UIView else { return }
        wk_hideToast(toast)
    }
    
    func wk_toastViewForMessage(_ message: String?, title: String?, image: UIImage?, style: WKToastStyle) throws -> UIView {
        
        guard message != nil || title != nil || image != nil else {
            throw WKToastError.missingParameters
        }
        
        var messageLabel: UILabel?
        var titleLabel: UILabel?
        var imageView: UIImageView?
        
        let wrapperView = UIView()
        wrapperView.backgroundColor = style.backgroundColor
        wrapperView.autoresizingMask = [.flexibleLeftMargin, .flexibleRightMargin, .flexibleTopMargin, .flexibleBottomMargin]
        wrapperView.layer.cornerRadius = style.cornerRadius
        
        if style.displayShadow {
            wrapperView.layer.shadowColor = UIColor.black.cgColor
            wrapperView.layer.shadowOpacity = style.shadowOpacity
            wrapperView.layer.shadowRadius = style.shadowRadius
            wrapperView.layer.shadowOffset = style.shadowOffset
        }
        
        if let image = image {
            imageView = UIImageView(image: image)
            imageView?.contentMode = .scaleAspectFit
            imageView?.frame = CGRect(x: style.horizontalPadding, y: style.verticalPadding, width: style.imageSize.width, height: style.imageSize.height)
        }
        
        var imageRect = CGRect.zero
        
        if let imageView = imageView {
            imageRect.origin.x = style.horizontalPadding
            imageRect.origin.y = style.verticalPadding
            imageRect.size.width = imageView.bounds.size.width
            imageRect.size.height = imageView.bounds.size.height
        }

        if let title = title {
            titleLabel = UILabel()
            titleLabel?.numberOfLines = style.titleNumberOfLines
            titleLabel?.font = style.titleFont
            titleLabel?.textAlignment = style.titleAlignment
            titleLabel?.lineBreakMode = .byTruncatingTail
            titleLabel?.textColor = style.titleColor
            titleLabel?.backgroundColor = UIColor.clear
            titleLabel?.text = title;
            
            let maxTitleSize = CGSize(width: (self.bounds.size.width * style.maxWidthPercentage) - imageRect.size.width, height: self.bounds.size.height * style.maxHeightPercentage)
            let titleSize = titleLabel?.sizeThatFits(maxTitleSize)
            if let titleSize = titleSize {
                titleLabel?.frame = CGRect(x: 0.0, y: 0.0, width: titleSize.width, height: titleSize.height)
            }
        }
        
        if let message = message {
            messageLabel = UILabel()
            messageLabel?.text = message
            messageLabel?.numberOfLines = style.messageNumberOfLines
            messageLabel?.font = style.messageFont
            messageLabel?.textAlignment = style.messageAlignment
            messageLabel?.lineBreakMode = .byTruncatingTail;
            messageLabel?.textColor = style.messageColor
            messageLabel?.backgroundColor = UIColor.clear
            
            let maxMessageSize = CGSize(width: (self.bounds.size.width * style.maxWidthPercentage) - imageRect.size.width, height: self.bounds.size.height * style.maxHeightPercentage)
            let messageSize = messageLabel?.sizeThatFits(maxMessageSize)
            if let messageSize = messageSize {
                let actualWidth = min(messageSize.width, maxMessageSize.width)
                let actualHeight = min(messageSize.height, maxMessageSize.height)
                messageLabel?.frame = CGRect(x: 0.0, y: 0.0, width: actualWidth, height: actualHeight)
            }
        }
  
        var titleRect = CGRect.zero
        
        if let titleLabel = titleLabel {
            titleRect.origin.x = imageRect.origin.x + imageRect.size.width + style.horizontalPadding
            titleRect.origin.y = style.verticalPadding
            titleRect.size.width = titleLabel.bounds.size.width
            titleRect.size.height = titleLabel.bounds.size.height
        }
        
        var messageRect = CGRect.zero
        
        if let messageLabel = messageLabel {
            messageRect.origin.x = imageRect.origin.x + imageRect.size.width + style.horizontalPadding
            messageRect.origin.y = titleRect.origin.y + titleRect.size.height + style.verticalPadding
            messageRect.size.width = messageLabel.bounds.size.width
            messageRect.size.height = messageLabel.bounds.size.height
        }
        
        let longerWidth = max(titleRect.size.width, messageRect.size.width)
        let longerX = max(titleRect.origin.x, messageRect.origin.x)
        let wrapperWidth = max((imageRect.size.width + (style.horizontalPadding * 2.0)), (longerX + longerWidth + style.horizontalPadding))
        let wrapperHeight = max((messageRect.origin.y + messageRect.size.height + style.verticalPadding), (imageRect.size.height + (style.verticalPadding * 2.0)))
        
        wrapperView.frame = CGRect(x: 0.0, y: 0.0, width: wrapperWidth, height: wrapperHeight)
        
        if let titleLabel = titleLabel {
            titleRect.size.width = longerWidth
            titleLabel.frame = titleRect
            wrapperView.addSubview(titleLabel)
        }
        
        if let messageLabel = messageLabel {
            messageRect.size.width = longerWidth
            messageLabel.frame = messageRect
            wrapperView.addSubview(messageLabel)
        }
        
        if let imageView = imageView {
            wrapperView.addSubview(imageView)
        }
        
        return wrapperView
    }
    
}

public struct WKToastStyle {

    public init() {}
    
    public var backgroundColor: UIColor = UIColor.black.withAlphaComponent(0.8)
    
    public var titleColor: UIColor = .white
    
    public var messageColor: UIColor = .white
    
    public var maxWidthPercentage: CGFloat = 0.8 {
        didSet {
            maxWidthPercentage = max(min(maxWidthPercentage, 1.0), 0.0)
        }
    }
    
    public var maxHeightPercentage: CGFloat = 0.8 {
        didSet {
            maxHeightPercentage = max(min(maxHeightPercentage, 1.0), 0.0)
        }
    }
    
    public var horizontalPadding: CGFloat = 10.0
    
    public var verticalPadding: CGFloat = 10.0
    
    public var cornerRadius: CGFloat = 10.0;
    
    public var titleFont: UIFont = .boldSystemFont(ofSize: 16.0)
    
    public var messageFont: UIFont = .systemFont(ofSize: 16.0)
    
    public var titleAlignment: NSTextAlignment = .left
    
    public var messageAlignment: NSTextAlignment = .left
    
    public var titleNumberOfLines = 0
    
    public var messageNumberOfLines = 0
    
    public var displayShadow = false
    
    public var shadowColor: UIColor = .black
    
    public var shadowOpacity: Float = 0.8 {
        didSet {
            shadowOpacity = max(min(shadowOpacity, 1.0), 0.0)
        }
    }

    public var shadowRadius: CGFloat = 6.0
    
    public var shadowOffset = CGSize(width: 4.0, height: 4.0)
    
    public var imageSize = CGSize(width: 80.0, height: 80.0)
    
    public var activitySize = CGSize(width: 100.0, height: 100.0)
    
    public var fadeDuration: TimeInterval = 0.2
    
    public var activityIndicatorColor: UIColor = .white
    
    public var activityBackgroundColor: UIColor = UIColor.black.withAlphaComponent(0.8)
    
}

public class WKToastManager {
    
    public static let shared = WKToastManager()
    
    public var style = WKToastStyle()
    
    public var isTapToDismissEnabled = true
    
    public var isQueueEnabled = false
    
    public var duration: TimeInterval = 3.0
    
    public var position: WKToastPosition = .bottom
    
}

public enum WKToastPosition {
    case top
    case center
    case bottom
    
    fileprivate func wk_centerPoint(forToast toast: UIView, inSuperview superview: UIView) -> CGPoint {
        let topPadding: CGFloat = WKToastManager.shared.style.verticalPadding + superview.wkSafeAreaInsets.top
        let bottomPadding: CGFloat = WKToastManager.shared.style.verticalPadding + superview.wkSafeAreaInsets.bottom
        
        switch self {
        case .top:
            return CGPoint(x: superview.bounds.size.width / 2.0, y: (toast.frame.size.height / 2.0) + topPadding)
        case .center:
            return CGPoint(x: superview.bounds.size.width / 2.0, y: superview.bounds.size.height / 2.0)
        case .bottom:
            return CGPoint(x: superview.bounds.size.width / 2.0, y: (superview.bounds.size.height - (toast.frame.size.height / 2.0)) - bottomPadding)
        }
    }
}

private extension UIView {
    
    var wkSafeAreaInsets: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return self.safeAreaInsets
        } else {
            return .zero
        }
    }
    
}
