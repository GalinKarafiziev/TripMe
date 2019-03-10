//
//  ViewController.swift
//  JSON Parsing
//
//  Created by issd on 10/03/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    final let url = URL(string: "http://dummy.restapiexample.com/api/v1/employees")
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        downloadJson()
    }
    
    func downloadJson(){
        guard let downloadURL = url else {return}
        
        URLSession.shared.dataTask(with: downloadURL) { (data, urlResponse, err) in
            guard let data = data, err == nil,  urlResponse != nil  else {return}
            
            
            do{
                let decoder = JSONDecoder()
                let employees = try decoder.decode(Employees.self, from: data)
                print(employees)
            }catch
            {
                print("Something went wrong")
            }
        }.resume()
    }
    
}

