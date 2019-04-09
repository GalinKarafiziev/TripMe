//
//  TripsController.swift
//  DUO
//
//  Created by Student on 15/03/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import SQLite

class TripsController: UITableViewController {
    var database: Connection!
    let tripsTable = Table("trips")
    
    let id = Expression<Int>("id")
    let name = Expression<String>("name")
    let country = Expression<String>("country")
    let city = Expression<String>("city")
    let category = Expression<String>("category")
    
    var trips = Trips.mockData()
    
    @IBAction func addTrip(_ segue: UIStoryboardSegue) {
        guard let tripsAddController = segue.source as? TripAddController,
            let trip = tripsAddController.addTrip else {
                return
        }
        trips.append(trip)
        let indexPath = IndexPath(row: trips.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
        let directory = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        let fileDest = directory.appendingPathComponent("trips").appendingPathExtension("sqlite3")
        let database = try Connection(fileDest.path)
        self.database = database;
        } catch{
            print(error);
        }
        self.CreateTable()
       
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
            try self.database.run(createTable)
            print("waw")
        } catch{
            print(error)
        }
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.queryAll().count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripsCell", for: indexPath) as! TripsCell
        let trip = self.queryAll()[indexPath.row]
        cell.textLabel?.text = trip.name
        cell.detailTextLabel?.text = trip.category
        return cell

        
    }
    
    func queryAll() -> [Trip]{
        var trippies = [Trip]()
        do{
            for trip in try database.prepare(self.tripsTable){
                let newTrip = Trip(name: String(trip[name]),city: String(trip[city]), country: String(trip[country]), category: String(trip[category]))
                trippies.append(newTrip)
                print("\(newTrip.name)")
            }
        } catch{
            print(error)
        }
        return trippies
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tripViewController = segue.destination as? TripDetailsController,
            let index = tableView.indexPathForSelectedRow?.row
            else {
                return
        }
        tripViewController.trip = trips[index]
        
        
    }
    
    
    
    
    
    /*
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     guard let productViewController = segue.destination as? ProductListController,
     let index = tableView.indexPathForSelectedRow?.row
     else {
     return
     }
     productViewController.trip = trips[index]
     }
     */
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


