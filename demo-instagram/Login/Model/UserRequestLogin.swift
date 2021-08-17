//
//  UserRequestLogin.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation
import SwiftyJSON

struct UserRequestLogin {
    let username: String
    let password: String
    
    var dictionaryPresentation: [String:Any] {
        return [
            "username": username,
            "password": password
        ]
    }

}
