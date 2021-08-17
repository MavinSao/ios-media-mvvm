//
//  UserLoginResponse.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation
import SwiftyJSON

struct UserLoginResponse {
    let status  : String
    let success : Bool
    let payload : UserLoginpayload
    
    init(json: JSON){
        self.status  = json["status"].stringValue
        self.success = json["success"].boolValue
        self.payload = UserLoginpayload(json: json["payload"])
    }
}

struct UserLoginpayload {
    
    let id       : Int
    let token    : String
    let username : String
    
    init(json: JSON){
        self.id       = json["id"].intValue
        self.token    = json["token"].stringValue
        self.username = json["username"].stringValue
    }
    
    
}
