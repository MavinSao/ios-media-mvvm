//
//  RegisterViewController.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var fullnameTF  : UITextField!
    @IBOutlet weak var usernameTF   : UITextField!
    @IBOutlet weak var passwordTF   : UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func btnRegisterClicked(_ sender: Any) {

        let fullname = fullnameTF.text
        let username = usernameTF.text
        let password = passwordTF.text
        
       
        
        guard let username = username,
              let fullname = fullname,
              let password = password else {
            return
        }
        
        RegisterViewModel.shared.register(username: username, fullname: fullname, password: password) { [weak self] message in
            let alert = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self?.present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    
    @IBAction func dismissRegister(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
  
}
