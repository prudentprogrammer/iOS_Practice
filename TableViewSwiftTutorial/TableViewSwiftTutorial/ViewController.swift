//
//  ViewController.swift
//  TableViewSwiftTutorial
//
//  Created by Arjun Bharadwaj on 6/10/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var elements = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
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
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = elements[indexPath.row]
        return myCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }


}

