//
//  String+Extension.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import Foundation

extension String {
    var asURL: URL? {
        return URL(string: self)
    }
}


