//
//  OthersProfileViewController.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/28/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class OthersProfileViewController: UIViewController {

    var profileVC : ProfileViewController?
    var showUser: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = showUser?.first_name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "embedUserProfile"){
            profileVC = segue.destinationViewController as? ProfileViewController
            profileVC?.profileUser = showUser!
        }
    }


}
