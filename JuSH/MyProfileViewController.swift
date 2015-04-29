//
//  MyProfileViewController.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/27/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController {

    var profileVC : ProfileViewController?
    
    @IBAction func onEditProfile(sender: AnyObject) {
        if(profileVC != nil){
            profileVC?.setAllowEditShowables(true)
        }
        let editButton : UIBarButtonItem = sender as! UIBarButtonItem
        editButton.enabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "embedMyProfile"){
            profileVC = segue.destinationViewController as? ProfileViewController
            profileVC?.profileUser = iAm
        }
    }
    

}
