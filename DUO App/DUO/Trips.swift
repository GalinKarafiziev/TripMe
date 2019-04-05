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
            Trip(name: "Easter trip", city: "Amsterdam", country: "Bulgaria", category: "Business trip"),
            Trip(name: "Company trip", city: "Vienna", country: "Netherlands", category: "Road trip")
        ]
    }
}
