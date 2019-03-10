//
//  ViewController.swift
//  Week3App
//
//  Created by issd on 28/02/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit

struct Course{
    
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myCourse = Course(id: 1, name: "myCourse", link: "myLink", imageUrl: "Url link")
        print(myCourse)
    }


}

