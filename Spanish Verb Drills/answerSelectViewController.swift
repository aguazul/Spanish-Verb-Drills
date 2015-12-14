//
//  answerSelectViewController.swift
//  Spanish Verb Drills
//
//  Created by Brandon on 14/12/2015.
//  Copyright (c) 2015 Brandon Bosse. All rights reserved.
//

import Foundation

import UIKit

class answerSelectViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
  
    @IBOutlet weak var tableView: UITableView!
    
    var answerList = ["temp1","temp2","temp3"]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.rowHeight = 70.0
        
    }
    
    // Assign how many rows will be in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.answerList.count
    }
    
    // Assign the value of each row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // create cell variable which is the row of the table
        var cell = UITableViewCell()
        
        // each cell/row of the table gets the next value from the lessonNumbers array
        cell.textLabel!.text = self.answerList[indexPath.row]
        cell.textLabel?.textAlignment = .Center
        cell.textLabel!.font = UIFont(name:"Avenir", size:20)
        return cell
    }
}