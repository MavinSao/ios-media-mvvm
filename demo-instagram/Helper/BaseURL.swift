//
//  BaseURL.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation

struct BaseURL {
    static let shared  = BaseURL()
    static let baseURL = "http://110.74.194.124:9999/api/"
    
    //TODO: Login URL
    static let login   : String            = "\(baseURL)auth/login"
    static let register: String            = "\(baseURL)auth/register"
    
    
}
