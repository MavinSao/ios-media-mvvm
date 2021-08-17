//
//  RegisterViewModel.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation

struct RegisterViewModel {
    
    static let shared = RegisterViewModel()
    let service = RegisterService.shared
    
    func register(username: String, fullname: String, password: String, completion: @escaping(_ message: String)->()){
        
        let request = RequestUserRegister(fullname: fullname, username: username, password: password)
        
        service.registerUser(request) { response in
            if response.success {
                completion("Create Account Successfully")
            }else{
                completion("Error")
            }
        }
        
    }
    
}
