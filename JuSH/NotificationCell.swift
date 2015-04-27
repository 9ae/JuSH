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
    
    @IBOutlet weak var btnPrimaryAction: UIButton!
    @IBOutlet weak var btnSecondaryAction: UIButton!
    
    @IBAction func onPrimaryAction(sender: AnyObject) {
        if(secondaryActionEnabled){ //is confirm
        
        } else { //is reschedule
        
        }
    }
    
    
    @IBAction func onSecondayAction(sender: AnyObject) {
        if (!secondaryActionEnabled){
            return
        }
    }
    
    func setContent(confirmReady: Bool, userFirstName: String, dateTime: String){
        secondaryActionEnabled = confirmReady
        var worksPrefix: String
        if(secondaryActionEnabled){
            btnPrimaryAction.setTitle("Confirm", forState: UIControlState.Normal)
            btnSecondaryAction.setTitle("Reschedule", forState: UIControlState.Normal)
            worksPrefix = "works"
            labelDateStatus.textColor = UIColor.greenColor()
        } else {
            btnPrimaryAction.setTitle("Reschedule", forState: UIControlState.Normal)
            btnSecondaryAction.hidden = true;
            worksPrefix = "does not work"
            labelDateStatus.textColor = UIColor.redColor()
        }
        
        imgUserAvatar.image = UIImage(named: "user_" + userFirstName)
        labelDateTime.text = dateTime
        labelDateStatus.text = worksPrefix + " for " + userFirstName
        
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
