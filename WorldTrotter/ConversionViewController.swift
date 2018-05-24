//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Arjun Bharadwaj on 5/22/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class ConversionViewController : UIViewController {
    @IBOutlet var celsiusLabel: UILabel!
    
    @IBAction func fahrenheitEditingChanged(_ textfield: UITextField) {
        if let text = textfield.text, !text.isEmpty {
            celsiusLabel.text = textfield.text
        }
        else {
            celsiusLabel.text = "???"
        }
    }
}
