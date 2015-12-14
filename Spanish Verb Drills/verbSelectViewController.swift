//
//  verbSelectViewController.swift
//  Spanish Verb Drills
//
//  Created by Brandon on 14/12/2015.
//  Copyright (c) 2015 Brandon Bosse. All rights reserved.
//

import Foundation

import UIKit

class verbSelectViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var lessonNum = 1
    
    var verbList = ["test1","test2","test3"]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = 70.0
        
    }
    
    // Assign how many rows will be in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.verbList.count
    }
    
    // Assign the value of each row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // create cell variable which is the row of the table
        var cell = UITableViewCell()
        
        // each cell/row of the table gets the next value from the lessonNumbers array
        cell.textLabel!.text = self.verbList[indexPath.row]
        cell.textLabel?.textAlignment = .Center
        cell.textLabel!.font = UIFont(name:"Avenir", size:20)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("verbSelectToAnswerSelectSegue", sender: self)
    }
    
}
