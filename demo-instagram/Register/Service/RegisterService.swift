//
//  RegisterService.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation
import SwiftyJSON
import Alamofire


struct RegisterService {
    
    static let shared = RegisterService()
    
    //MARK: - Create User
    func registerUser(_ userRequest: RequestUserRegister, completion: @escaping(_ userResponse: ResponseUserRegister)->()){
        
        let urlString = BaseURL.register
        
        guard let url = urlString.asURL else {
            return
        }
                
                
        AF.request(url, method: .post, parameters: userRequest.dictionaryPresentation, encoding: JSONEncoding.default).responseJSON { response in
            
            print(response)
            
            switch response.result {
            
            case .success(let value):
                
                let json = JSON(value)
                completion(ResponseUserRegister(json: json))
    
            case .failure(let error):
                print("register account error \(error)")
            }
            
        }
        
        
        
    }
    
    
}

