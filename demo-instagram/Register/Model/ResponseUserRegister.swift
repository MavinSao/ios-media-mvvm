//
//  ResponseUserRegister.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation
import SwiftyJSON

//MARK: - ResponseUserRegister
struct ResponseUserRegister {
    let status : String
    let success: Bool
    let payload   : UserDataResponse
    
    init(json: JSON) {
        self.status  = json["status"].stringValue
        self.success = json["success"].boolValue
        self.payload = UserDataResponse(json: json["payload"])
    }
}

struct UserDataResponse {
    let id         : Int
    let fullname   : String
    let username   : String
    let imageUrl   : String
    
    init(json: JSON){
        self.id          = json["id"].intValue
        self.fullname    = json["fullname"].stringValue
        self.username    = json["username"].stringValue
        self.imageUrl    = json["imageUrl"].stringValue
        
    }
}
