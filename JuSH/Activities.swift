//
//  Activities.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/24/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import Foundation

struct Activity {
    var user_name: String
    var day_flag: NSInteger
    var date_time: String
    var venue_name: String
    var description: String
    var details = ""
    var interested = [User]()
    var open: Bool
}

let activitiesList = [Activity(user_name: "Finn", day_flag: 1 ,date_time: "Tuesday afternoon", venue_name: "Madison Sq. Park", description: "Walk our dogs", details: "Walk with me and my dog Jake", interested: [], open: false)]

let myActsList = [
    Activity(
        user_name: "BMO", day_flag: 1, date_time: "Tonight", venue_name: "X", description: "x", details: "x", interested: [
            User(first_name:"Finn"), User(first_name:"Marceline")], open: false ),
    Activity(
        user_name: "BMO", day_flag: 1, date_time: "Tomorrow Afternoon", venue_name: "Y", description: "xy", details: "xy", interested: [
            User(first_name:"Finn"), User(first_name:"Bubblegum")], open: false)
]