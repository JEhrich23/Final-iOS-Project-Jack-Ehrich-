//
//  TableViewController.swift
//  Final Project
//
//  Created by Student on 5/3/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var authors: [String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    authors = ["Amelia Earhart",
                   "Rainer Maria Rilke",
                   "Leonardo Da Vinci"]
    //establishes list of authors when the tableview is loaded
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //number of tableviews is set equal to 1
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return authors.count
    }
    //number of rows in tableview is set equal to the amount of authors
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // either works fine
       let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        
        cell.textLabel?.text = authors[indexPath.row]
        //establishes each cell equal to an author 
        return cell
    }
    
    
}

