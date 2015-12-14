//
//  lessonSelectViewController.swift
//  Spanish Verb Drills
//
//  Created by Brandon on 13/12/2015.
//  Copyright (c) 2015 Brandon Bosse. All rights reserved.
//

import Foundation

// Import UIKit to have access to the UI elements
import UIKit


// Define the class and tell it what UI elements will be controlled
class lessonSelectViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // Link the TableView to the code
    @IBOutlet weak var TableViewLink: UITableView!
    
    // An array of the lesson numbers
    var lessonNumbers = [1, 2, 3, 4, 5]
    
    // Tell it what will be controlled
    override func viewDidLoad() {
        
        self.TableViewLink.dataSource = self
        self.TableViewLink.delegate = self
        self.TableViewLink.rowHeight = 120.0
    
    }
    
    // Assign how many rows will be in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lessonNumbers.count
    }
    
    // Assign the value of each row
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // create cell variable which is the row of the table
        var cell = UITableViewCell()
        
        // each cell/row of the table gets the next value from the lessonNumbers array
        cell.textLabel!.text = "Lesson " + String(self.lessonNumbers[indexPath.row])
        cell.textLabel?.textAlignment = .Center
        cell.textLabel!.font = UIFont(name:"Avenir", size:32)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("lessonSelectToVerbSelectSegue", sender: self)
    }
}