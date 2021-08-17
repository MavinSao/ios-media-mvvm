//
//  RequestUserRegister.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation

struct RequestUserRegister {
    let fullname, username: String
    let password: String
    
    var dictionaryPresentation: [String: Any] {
        return [
            "fullname": fullname,
            "username": username,
            "password": password
        ]
    }
    
}
