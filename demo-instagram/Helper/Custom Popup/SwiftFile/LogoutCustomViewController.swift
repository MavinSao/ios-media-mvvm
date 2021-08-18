//
//  LogoutCustomViewController.swift
//  demo-instagram
//
//  Created by Mavin Sao on 18/8/21.
//

import UIKit

class LogoutCustomViewController: UIViewController {
    
    var onYes : (String)->() = { _ in }
    var onCancel : (String)->() = { _ in }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func yesClicked(_ sender: Any) {
        self.onYes("Yes Click")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelClicked(_ sender: Any) {
        self.onCancel("Cancel Click")
        self.dismiss(animated: true, completion: nil)
    }

}
