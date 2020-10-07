//
//  Websites.swift
//  BrowserApp
//
//  Created by Madina Tazhiyeva on 10/4/20.
//  Copyright © 2020 Madina Tazhiyeva. All rights reserved.
//

import Foundation

class Websites{
    var id: String!
    var name: String!
    var url: String!
    
    init(name: String, url: String) {
        id = UUID().uuidString
        self.name = name
        self.url = url
    }
}


