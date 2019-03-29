//
//  TripsCell.swift
//  DUO
//
//  Created by Student on 16/03/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class TripsCell: UITableViewCell {

    @IBOutlet weak var categoryTrip: UILabel!
    @IBOutlet weak var nameTrip: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
