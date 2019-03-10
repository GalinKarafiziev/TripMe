//
//  EmployeeCell.swift
//  JSON Parsing
//
//  Created by issd on 10/03/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit

class EmployeeCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var DOBLbl: UILabel!
    
    @IBOutlet var imgView: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
