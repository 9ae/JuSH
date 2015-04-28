//
//  InterestTag.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/23/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import UIKit

class InterestTag: UICollectionViewCell {
    
    @IBOutlet weak var textTag: UITextField!
    
    func setTagText(tagName: String){
        textTag.text = tagName
    }
}
