//
//  Activities.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/24/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import Foundation

enum WhenDay {
    case TODAY, TOMORROW, THIS_WEEK
}

struct Activity {
    var user: User
    var day_flag: WhenDay
    var date_time: String
    var venue_name: String
    var description: String
    var details = ""
    var interested = [User]()
    var open: Bool
}

let activitiesList = [
    Activity(user: Finn, day_flag: WhenDay.TODAY ,
        date_time: "Tuesday afternoon",
        venue_name: "Madison Sq. Park",
        description: "Walk our dogs",
        details: "Walk with me and my dog Jake",
        interested: [], open: false),
    Activity(user: Marce, day_flag: WhenDay.TOMORROW,
        date_time: "Tomorrow Night",
        venue_name: "Drom",
        description: "Voltaire concert",
        details: "Cover $8",
        interested: [Finn],
        open: true)
]

let myActsList = [
    Activity(
        user: iAm, day_flag: WhenDay.TODAY, date_time: "Tonight", venue_name: "X", description: "x", details: "x", interested: [Finn, Marce], open: false ),
    Activity(
        user: iAm, day_flag: WhenDay.TOMORROW, date_time: "Tomorrow Afternoon", venue_name: "Y", description: "xy", details: "xy", interested: [
            Finn, Bubble], open: false)
]