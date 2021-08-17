//
//  CardTableViewCell.swift
//  demo-instagram
//
//  Created by Mavin Sao on 17/8/21.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postCaptionLabel: UILabel!
    @IBOutlet weak var loveCountLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
    static let identifier = "CardTableViewCell"
    
   
}
