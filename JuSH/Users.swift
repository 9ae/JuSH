//
//  Users.swift
//  JuSH
//
//  Created by Alice Q Wong on 4/26/15.
//  Copyright (c) 2015 Alice Q Wong. All rights reserved.
//

import Foundation

struct User {
    var first_name: String
    var gender = "Androgynous"
    var age = 18
    var location = "New York"
    var tags = [String]()
}

var iAm = User(first_name: "BMO", gender: "Andro", age: 6, location: "New York, NY", tags: ["computing", "fans", "rainbows"])

let Finn = User(first_name: "Finn", gender: "Finn", age: 15, location: "New York, NY", tags: ["dogs", "candy", "rainbows"])
let Marce = User(first_name: "Marceline", gender: "Female", age: 19, location: "New York, NY", tags: ["music", "blood", "nail polish"])
let Bubble = User(first_name: "Bubblegum", gender: "Female", age: 19, location: "New York, NY", tags: ["bubbles", "pink", "rainbows"])