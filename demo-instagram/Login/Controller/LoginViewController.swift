//
//  LoginViewController.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClick(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainTabarController = storyboard.instantiateViewController(identifier: "MainTabBar")
        
        // This is to get the SceneDelegate object from your view controller
          // then call the change root view controller function to change to main tab bar
          (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(mainTabarController)
        
    }
    
    
}
