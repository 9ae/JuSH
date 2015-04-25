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
    
    @IBOutlet weak var buttonMapLocation: UIButton!
    
    @IBOutlet weak var buttonGo: UIButton!
    
    
    @IBOutlet weak var overlay: UIVisualEffectView!
    
    @IBOutlet weak var vibrantBox: UIVisualEffectView!

    @IBAction func onButtonGoTouched(sender: AnyObject) {
        overlay.hidden = false
       /* let constraints: [NSLayoutConstraint]  =vibrantBox.constraints() as! [NSLayoutConstraint]
        for i in 0...constraints.count{
            var c = constraints[i]
            println(c. +":" + c)
        } */
        let b: CGRect = vibrantBox.bounds
        NSLog("ORIGN %f : %f", b.origin.x, b.origin.y)
        NSLog("Size: %f x %f", b.width, b.height)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       self.labelActivityDescription.text = self.selectedActivity!.description
        self.labelUserName.text = self.selectedActivity!.user_name
        self.textActivityDetailText.text = self.selectedActivity!.details
        self.labelActivityTime.text = "at " + self.selectedActivity!.date_time
        self.labelActivityLocation.text = "on " + self.selectedActivity!.venue_name
        
        self.overlay.hidden = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}