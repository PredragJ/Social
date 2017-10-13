//
//  PostCell.swift
//  Social
//
//  Created by Predrag Jevtic on 10/13/17.
//  Copyright © 2017 Predrag Jevtic. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userNameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var caption: UITextView!
    @IBOutlet weak var likesLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
