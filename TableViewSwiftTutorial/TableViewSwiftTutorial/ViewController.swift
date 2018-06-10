//
//  ViewController.swift
//  TableViewSwiftTutorial
//
//  Created by Arjun Bharadwaj on 6/10/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var elements = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<50 {
            elements.append("Row \(i)")
        }
        print(elements)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

