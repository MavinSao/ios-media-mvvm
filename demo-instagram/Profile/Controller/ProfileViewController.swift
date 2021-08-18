//
//  ProfileViewController.swift
//  demo-instagram
//
//  Created by Mavin Sao on 18/8/21.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        
//        let vc = storyboard?.instantiateViewController(identifier: "logoutAlert") as! LogoutCustomViewController
        
        let vc = UIStoryboard(name: "CustomPopup", bundle: nil).instantiateViewController(identifier: "logoutAlert") as! LogoutCustomViewController
    
        vc.modalPresentationStyle = .overCurrentContext
        vc.modalTransitionStyle = .crossDissolve
        vc.providesPresentationContextTransitionStyle = true
        vc.definesPresentationContext = true
        
        let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewVC") as! LoginViewController
        
        vc.onYes = {message in
            (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(loginVC)
        }
        
        
        present(vc, animated: true, completion: nil)
        
    }


}
