//
//  ActivityDetailsViewController.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/24/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class ActivityDetailsViewController: UIViewController {

    var selectedActivity: Activity?
    
    @IBOutlet weak var labelUserName: UILabel!
    @IBOutlet weak var labelActivityDescription: UILabel!
    
    @IBOutlet weak var textActivityDetailText: UITextView!
    
    @IBOutlet weak var labelActivityTime: UILabel!
    @IBOutlet weak var labelActivityLocation: UILabel!
    
    @IBOutlet weak var btnAvatar: UIButton!
    
    @IBOutlet weak var buttonMapLocation: UIButton!
    
    @IBOutlet weak var buttonGo: UIButton!
    
    @IBOutlet weak var overlay: UIVisualEffectView!
    
    
    @IBOutlet weak var imageUserAvatar: UIImageView!

    @IBAction func onButtonGoTouched(sender: AnyObject) {
        self.overlay.hidden = false

    }
    
    
    @IBAction func onNevermindTouched(sender: AnyObject) {
        hideModal()
    }
    
    func hideModal(){
        self.overlay.hidden = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

       self.labelActivityDescription.text = self.selectedActivity!.description
        self.labelUserName.text = self.selectedActivity!.user.first_name
        self.textActivityDetailText.text = self.selectedActivity!.details
        self.labelActivityTime.text = "at " + self.selectedActivity!.date_time
        self.labelActivityLocation.text = "on " + self.selectedActivity!.venue_name
        self.btnAvatar.setImage(UIImage(named: "user_"+self.selectedActivity!.user.first_name ), forState: UIControlState.Normal)
        self.overlay.hidden = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "activityDetail2Profile"){
            let profileView : OthersProfileViewController = segue.destinationViewController as! OthersProfileViewController
            profileView.showUser = selectedActivity?.user
        }
    }
    

}
