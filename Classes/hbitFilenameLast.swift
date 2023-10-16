 
 
 
 
 
 

import Foundation
import Moya
import SwiftyJSON

extension vlCriterionSave: TargetType {
    public var headers: [String : String]? {
        return nil
    }
    
    public var baseURL: URL {
        return URL(string: prrtyMonthNote)!
    }

    public var method: Moya.Method {
        return .get
    }

    public var path: String {
        return ""
    }
    
    public var task: Task {
        return .downloadDestination(nterfereOftenHard)
    }
}
