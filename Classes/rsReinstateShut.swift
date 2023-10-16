 
 
 
 
 
 

import Foundation

public enum CnfrmTestFormat {
    case trndGigaFigure
    case cmpnentsRestCaret
    case prgrmHandlerBeep
}

public struct rsReinstateShut {
   public static func rgnAwareTerm(expnsnUniqueRule: UIViewController, ntferLessonPlay: CnfrmTestFormat) {
       if let block = sttParagraphMega.default.BndngExitChoice {
           block(ntferLessonPlay)
       }
       if #available(iOS 16.0, *) {
           let bndryEqualCombo = UIApplication.shared.connectedScenes.first as? UIWindowScene
           switch ntferLessonPlay {
           case .trndGigaFigure:
               bndryEqualCombo?.requestGeometryUpdate(.iOS(interfaceOrientations: .portrait))
               break
           case .cmpnentsRestCaret:
               bndryEqualCombo?.requestGeometryUpdate(.iOS(interfaceOrientations: .landscape))
               break
           case .prgrmHandlerBeep:
               bndryEqualCombo?.requestGeometryUpdate(.iOS(interfaceOrientations: .all))
               break
           }
           expnsnUniqueRule.setNeedsUpdateOfSupportedInterfaceOrientations()
       } else {
           switch ntferLessonPlay {
           case .trndGigaFigure:
               UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
               break
           case .cmpnentsRestCaret:
               UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
               break
           case .prgrmHandlerBeep:
               UIDevice.current.setValue(UIInterfaceOrientation.unknown.rawValue, forKey: "orientation")
               break
           }
       }
    }
}


