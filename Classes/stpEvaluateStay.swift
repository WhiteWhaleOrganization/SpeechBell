 
 
 
 
 
 

import Foundation

public extension UIImage {
        
    func gestreCordSecond(dteTeachPlus: Int) -> UIImage {
        let pperLowestTerm = self.phenxSelectGzip(dteTeachPlus: dteTeachPlus)
        if let mnmmDestroyAdjust = UIImage(data: pperLowestTerm){
            return mnmmDestroyAdjust
        }
        return self
    }

    func phenxSelectGzip(dteTeachPlus: Int) -> Data {
         
        let cllbckAwayBottom: Int = dteTeachPlus
        var nverseEachAccess: CGFloat = 1
        guard var pperLowestTerm = self.jpegData(compressionQuality: nverseEachAccess), pperLowestTerm.count > cllbckAwayBottom else { return self.jpegData(compressionQuality: nverseEachAccess)! }
        var max: CGFloat = 1
        var min: CGFloat = 0
        for _ in 0..<6 {
            nverseEachAccess = (max + min) / 2
            pperLowestTerm = self.jpegData(compressionQuality: nverseEachAccess)!
            if CGFloat(pperLowestTerm.count) < CGFloat(cllbckAwayBottom) * 0.9 {
                min = nverseEachAccess
            } else if pperLowestTerm.count > cllbckAwayBottom {
                max = nverseEachAccess
            } else {
                break
            }
        }
        var restrctEjectCreate: UIImage = UIImage(data: pperLowestTerm)!
        if pperLowestTerm.count < cllbckAwayBottom { return pperLowestTerm }
        var repntMultiThen: Int = 0
        while pperLowestTerm.count > cllbckAwayBottom && pperLowestTerm.count != repntMultiThen {
            repntMultiThen = pperLowestTerm.count
            let seprteAssignEven: CGFloat = CGFloat(cllbckAwayBottom) / CGFloat(pperLowestTerm.count)
            let crselPageSplit: CGSize = CGSize(width: Int(restrctEjectCreate.size.width * sqrt(seprteAssignEven)),
                                      height: Int(restrctEjectCreate.size.height * sqrt(seprteAssignEven)))
            UIGraphicsBeginImageContext(crselPageSplit)
            restrctEjectCreate.draw(in: CGRect(x: 0, y: 0, width: crselPageSplit.width, height: crselPageSplit.height))
            restrctEjectCreate = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            pperLowestTerm = restrctEjectCreate.jpegData(compressionQuality: nverseEachAccess)!
        }
        return pperLowestTerm
    }
}
