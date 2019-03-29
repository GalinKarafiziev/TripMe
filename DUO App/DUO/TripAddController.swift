//
//  TripAddController.swift
//  DUO
//
//  Created by Student on 16/03/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class TripAddController: UITableViewController {
    var trip: Trip?
    
    var category: String = "Chess" {
        didSet {
            categoryText.text = category
        }
    }
    
    var city: String = "Pick"{
        didSet{
            cityText.text = city
            
        }
        
    }
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var categoryText: UILabel!
    @IBOutlet weak var countryText: UITextField!
    @IBOutlet weak var cityText: UILabel!
    
    
    @IBAction func addTrip(_ segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if segue.identifier == "addTrip"{
            trip = Trip(name: nameText.text!, city: cityText.text!, country: countryText.text!, category: category)
        
    }
        if segue.identifier == "pickCategory",
            let categoryController = segue.destination as? CategoryPickerController {
            categoryController.selectedCategory = category
        }
        if segue.identifier == "showCountry",
            let cityView = segue.destination as? CityPickerController {
            cityView.selectedGame = city
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
 */
    
    /*
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
 */

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
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

extension TripAddController {
    
    @IBAction func unwindWithSelectedGame(segue: UIStoryboardSegue) {
        if let categoryController = segue.source as? CategoryPickerController,
            let selectedCategory = categoryController.selectedCategory {
            category = selectedCategory
        }
    }
}
extension TripAddController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameText.becomeFirstResponder()
        }
    }
}

extension TripAddController {
    
    @IBAction func unwindWithSelectedCity(segue: UIStoryboardSegue) {
        if let cityPickerController = segue.source as? CityPickerController,
            let selectedGame = cityPickerController.selectedGame {
            city = selectedGame
        }
    }
}
