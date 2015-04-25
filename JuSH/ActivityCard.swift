//
//  ActivityCard.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/24/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class ActivityCard: UITableViewCell {

    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userPictureView: UIImageView!
    @IBOutlet weak var actDescription: UILabel!
    @IBOutlet weak var whereWhenLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
