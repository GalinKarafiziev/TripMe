//
//  Database.swift
//  DUO
//
//  Created by Student on 10/04/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation
import SQLite

class Database{
    static let shared: Database = Database()
    private let db: Connection?
    public let tripsTable = Table("trips")
    private let id = Expression<Int>("id")
    private let name = Expression<String>("name")
    private let country = Expression<String>("country")
    private let city = Expression<String>("city")
    private let category = Expression<String>("category")
    
    init(){
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true).first!
        do{
            db = try Connection("\(path)/trips.sqlite3")
        } catch{
            db = nil
            print(error)
        }
    }
    
    func CreateTable(){
        let createTable = self.tripsTable.create { (table) in
            table.column(self.id, primaryKey: true)
            table.column(self.name)
            table.column(self.country)
            table.column(self.city)
            table.column(self.category)
        }
        do{
            try self.db!.run(createTable)
            print("waw")
        } catch{
            print(error)
        }
    }
    
    func addTrip(name: String, city: String, country: String, category: String) -> Int64? {
        do{
    let insert = tripsTable.insert(self.name <- name, self.city <- city, self.country <- country, self.category <- category)
    let id = try db!.run(insert)
        return id
        } catch{
            print(error)
            return nil
        }
    }
    
    func getTrips() -> [Trip]{
        var trips = [Trip]()
        do{
            for trip in try db!.prepare(self.tripsTable){
                let newTrip = Trip(name: trip[name], city: trip[city], country: trip[country], category: trip[category])
                trips.append(newTrip)
                //print(newTrip.name)
            }
            
        }catch{
            print("error")
        }
        return trips
    }
    
}
