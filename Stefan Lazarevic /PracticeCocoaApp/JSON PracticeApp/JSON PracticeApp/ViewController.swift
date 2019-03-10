//
//  ViewController.swift
//  JSON PracticeApp
//
//  Created by issd on 10/03/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit

struct WebsiteDescription: Decodable{
    
    let name: String
    let description: String
    let courses: [Course]
}



struct Course: Decodable{
    
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    
    
  
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let JsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/courses_missing_fields"
        guard let url = URL(string: JsonUrlString) else {return}
        
        URLSession.shared.dataTask(with: url){(data,response,err) in
            //perhaps check err
            //perhaps check response status 200 OK
            guard let data = data else {return}
            
            //let dataAsString = String(data: data, encoding: .utf8)
            //print(dataAsString)
            
            do{
               // let websiteDescription = try JSONDecoder().decode(WebsiteDescription.self, from: data)
                
                //print(websiteDescription.name, websiteDescription.description)
                
                let courses = try JSONDecoder().decode([Course].self, from: data)
                print(courses)
                
                // guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else {return}
               // let course = Course(json: json)
            
              
                
            }catch let jsonErr{
                print("error serialazing json: ", jsonErr)
            }
            
            
            
            
        }.resume()
        
        // Do any additional setup after loading the view, typically from a nib.
        //let myCourse = Course(id: 1, name: "my course", link: "my link ", imageUrl: "url for image")
        //print(myCourse)
        
    }


}

