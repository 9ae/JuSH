//
//  ProfileViewController.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/27/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    var allowEdit = false
    var profileUser : User?
    
    
    @IBOutlet weak var imgAvatar: UIImageView!
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelLocation: UILabel!
    
    
    @IBOutlet weak var inputTag: UITextField!
    @IBOutlet weak var container: UIView!
    
    var tagCloud : TagCollectionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (profileUser != nil){
            imgAvatar?.image = UIImage(named: "user_" + profileUser!.first_name)
            labelFirstName.text = profileUser!.first_name
            labelGender.text = profileUser!.gender
            labelAge.text = String(format: "%d years old", profileUser!.age )
            labelLocation.text = profileUser!.location
        }
        
        self.inputTag.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func setAllowEditShowables(allow: Bool){
        allowEdit = allow
        
        if(!allowEdit){
            inputTag?.hidden = true
        } else {
            inputTag?.hidden = false
            tagCloud?.editable = true
        }
        tagCloud?.collectionView?.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onTagInputEntered(sender: AnyObject) {
        var tag : String = inputTag.text
        tag = tag.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        if contains(profileUser!.tags, tag) {
            return
        }
        profileUser!.tags.append(tag)
        tagCloud!.interestTags.append(tag)
        tagCloud!.collectionView?.reloadData()
        inputTag.text = ""
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if(segue.identifier=="embedInterestTags"){
            tagCloud = segue.destinationViewController as? TagCollectionController
            tagCloud?.interestTags = profileUser!.tags
            if(allowEdit){
                tagCloud?.editable = true
            }
            if( self.profileUser?.first_name != iAm.first_name ){
              tagCloud?.colorTags = true
            }
        }
    }
    

}
