//
//  ViewController.swift
//  TableViewTutorial
//
//  Created by Arjun Bharadwaj on 6/11/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var myData = [String]() // The data used in tableview
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in 0...100 {
            myData.append("Row #\(i)")
        }
        
        //print(myData)
        
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        myCell.textLabel?.text = myData[indexPath.row]
        return myCell
    }


}

