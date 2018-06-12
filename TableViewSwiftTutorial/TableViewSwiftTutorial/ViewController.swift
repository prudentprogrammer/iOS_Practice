//
//  ViewController.swift
//  TableViewSwiftTutorial
//
//  Created by Arjun Bharadwaj on 6/10/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var elements = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
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
        let myCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        myCell.textLabel?.text = elements[indexPath.row]
        return myCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myAlert = UIAlertController(title: "Title", message: "You clicked row number \(elements[indexPath.row])", preferredStyle: UIAlertControllerStyle.actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {(alertAction: UIAlertAction!) in myAlert.dismiss(animated: true, completion: nil)})
        myAlert.addAction(cancel)
        self.present(myAlert, animated: true)
    }


}

