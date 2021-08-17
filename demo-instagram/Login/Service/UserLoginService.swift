//
//  UserLoginService.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation
import SwiftyJSON
import Alamofire

struct UserServiceLogin{
    
    static let shared = UserServiceLogin()
    
    func login(userRequest: UserRequestLogin, completion: @escaping (_ userResponse: UserLoginResponse)->()){
        
        guard let url = BaseURL.login.asURL else {
            return
        }
        
        AF.request(url, method: .post, parameters: userRequest.dictionaryPresentation, encoding: JSONEncoding.default, headers: nil).responseJSON { response in
            
            switch response.result {
            
            case .success(let value):
                  let json = JSON(value)
                  let userLoginResponse = UserLoginResponse(json: json)
                  completion(userLoginResponse)
            case .failure(let error):
                  print("Error \(error)")
            }
            
        }
        
        
        
    }
    
    
}
