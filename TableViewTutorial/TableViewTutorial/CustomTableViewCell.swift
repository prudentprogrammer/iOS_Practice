//
//  CustomTableViewCell.swift
//  TableViewTutorial
//
//  Created by Arjun Bharadwaj on 6/4/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        label.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
