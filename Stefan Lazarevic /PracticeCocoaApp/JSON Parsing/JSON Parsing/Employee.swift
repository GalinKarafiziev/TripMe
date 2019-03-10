//
//  Employee.swift
//  JSON Parsing
//
//  Created by issd on 10/03/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit

class Employees:Codable{
    
    let employees: [Employee]
    
    init(employees: [Employee]){
        self.employees=employees
    }
}
class Employee: NSObject,Codable {
    let id: Int?
    let employee_name: String?
    let employee_salary: Double?
    let employee_age: Int?
    let profile_image: String?
    
    init(id: Int, name: String, salary: Double, age: Int, image: String)
    {
        self.id=id
        self.employee_name=name
        self.employee_salary=salary
        self.employee_age=age
        self.profile_image=image
    }
}
