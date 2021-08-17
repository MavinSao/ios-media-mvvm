//
//  UIViewController+Extension.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation
import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: identifier) as! Self
    }
}
