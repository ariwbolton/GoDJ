//
//  QueueTableViewController.swift
//  GoDJ
//
//  Created by Elwood Bolton on 7/31/16.
//  Copyright © 2016 Ari Bolton. All rights reserved.
//

import UIKit

class QueueTableViewController: UITableViewController {
    var table: [String: [Song]] = [String: [Song]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table["current"]    = [Song()]
        table["queue"]      = []
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("QueueCell", forIndexPath: cellForRowAtIndexPath)
        
        if cellForRowAtIndexPath.section == 0 {
            cell.textLabel?.text = "Currently playing song title"
            cell.detailTextLabel?.text = "Current artist"
        } else {
            cell.textLabel?.text = "Song title"
            cell.detailTextLabel?.text = "Artist"
        }
            
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 3
            return table["queue"]!.count
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Current"
        } else {
            return "Queue"
        }
    }
    
}
