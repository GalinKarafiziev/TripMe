//
//  TripDetailsController.swift
//  DUO
//
//  Created by Student on 22/03/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import WebKit

class TripDetailsController: UIViewController {

    var trip: Trip?
    var city: String = ""
    var url: String = ""
    
    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        city = (trip?.city)!
        url = "https://en.wikipedia.org/wiki/\(city)"
        let url4wiki = URL(string: url)
        let req = URLRequest(url: url4wiki!)
        webView.load(req)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tripViewController = segue.destination as? ProductListController,
            let trip = self.trip
            else {
                return
        }
        
        tripViewController.trip = trip
        
        }
        
}
    
        
        
        
        
    

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


