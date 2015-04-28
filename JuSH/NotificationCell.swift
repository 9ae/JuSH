//
//  NotificationCell.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/27/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class NotificationCell: UITableViewCell {
    
    var secondaryActionEnabled: Bool = true
    
    @IBOutlet weak var imgUserAvatar: UIImageView!
    @IBOutlet weak var labelDateTime: UILabel!
    @IBOutlet weak var labelDateStatus: UILabel!
    
    func setContent(noteType: NotificationType, title: String, subtitle: String, userFirstName: String){
        secondaryActionEnabled = noteType == NotificationType.GOOD_TIME
        
        labelDateTime.text = title
        labelDateStatus.text = subtitle
        
        if(secondaryActionEnabled){
            labelDateStatus.textColor = UIColor.greenColor()
        } else {
            labelDateStatus.textColor = UIColor.redColor()
        }
        
        imgUserAvatar.image = UIImage(named: "user_" + userFirstName)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
