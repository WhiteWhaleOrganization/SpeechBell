 
 
 
 
 
 

import UIKit

public class prstExtractItem: slidCircuitMega {
    public var strkeTellPrompt:tgglReferenceFree!
    public var chrAmountCard:kypdDisappearHard?
    public override func shdwUnsafeValidate() {
        strkeTellPrompt = tgglReferenceFree()
        strkeTellPrompt.cntrlWordShell.font = .systemFont(ofSize: 12)
        strkeTellPrompt.setNeedsUpdateConstraints()
        contentView.addSubview(strkeTellPrompt)
        strkeTellPrompt.snp.remakeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    public func nmercFunctionExit(trncteOnceSublayer:kypdDisappearHard?){
        self.chrAmountCard = trncteOnceSublayer
        self.strkeTellPrompt.nmercFunctionExit(trncteOnceSublayer: trncteOnceSublayer)
    }
    
}
