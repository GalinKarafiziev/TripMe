//
//  Trips.swift
//  DUO
//
//  Created by Student on 15/03/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

final class Trips {
    
    static func mockData() -> [Trip]{
        return [
            Trip(name: "Easter trip", city: "Going back for easter to my parents", country: "Bulgaria", category: "Leasure"),
            Trip(name: "Company trip", city: "Going on a company visit", country: "Netherlands", category: "Business")
        ]
    }
}
