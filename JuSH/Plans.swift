//
//  Plans.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/27/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import Foundation

struct Plans {
    var userFirstName : String
    var dateTime: String
    var works: Bool
}

let myCurrentPlansInTheMaking = [Plans(userFirstName: "Finn", dateTime: "Monday, April 30 3PM", works: false),
    Plans(userFirstName: "Marceline", dateTime: "Tuesday, May 1 9PM", works: true)
]