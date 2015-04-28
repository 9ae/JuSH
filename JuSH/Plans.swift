//
//  Plans.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/27/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import Foundation

enum NotificationType {
    case COINKIDONK, GOOD_TIME, BAD_TIME
}

struct Plans {
    var userFirstName : String
    var planDate: String
    var planTime: String
    var message: String
    var noteType: NotificationType
}

let myCurrentPlansInTheMaking = [Plans(userFirstName: "Finn", planDate: "Monday, April 30", planTime: "3:00 PM", message: "does NOT work for Finn ",  noteType: NotificationType.BAD_TIME ),
    Plans(userFirstName: "Marceline", planDate: "Tuesday, May 1", planTime: "9:00 PM",  message: "works for Marceline", noteType: NotificationType.GOOD_TIME)
]