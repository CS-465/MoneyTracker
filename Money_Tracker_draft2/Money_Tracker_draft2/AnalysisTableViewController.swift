//
//  AnalysisTableViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/10/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class AnalysisTableViewController: UITableViewController {
    
    /* type to represent table items
    `section` stores a `UITableView` section */
    
    class Sections {
        var header:String
        var item:[String]
        var category:[Int]
        var cost:[String]
        init(header:String,item:[String],category:[Int],cost:[String])
        {
            self.header=header
            self.item=item
            self.category=category
            self.cost=cost
        }
    }
    
    var sectionArray: [Sections]
        {
            var s1=Sections(header:"Today",item:["EVO"],category:[0],cost:["$ 12.0"])
            var s2=Sections(header: "Yesterday", item: ["Woorijib","Starbucks"], category: [0,0], cost: ["$ 13.00","$ 5.00"])
            var s3=Sections(header: "Nov 8", item: ["Gas"], category: [3], cost: ["$ 20.00"])
            var s4=Sections(header: "Nov 5", item: ["American Eagle"], category: [1], cost: ["$ 70.00"])
            var s5=Sections(header: "Nov 1", item: ["Grocery"], category: [2], cost: ["$ 15.00"])
            var s6=Sections(header: "Oct 28", item: ["Apartment"], category: [4], cost: ["$ 400.00"])
            var s = [s1,s2,s3,s4,s5,s6]
            return s
            
    }
    var images=["food_30.png","clothes_30.png","grocery_30.png","gas_station_30.png","home_30.png"]
    
    
    
    // table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView)
        -> Int {
            return self.sectionArray.count
    }
    
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int)
        -> Int {
            return self.sectionArray[section].item.count
    }
    
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = UITableViewCell(style:UITableViewCellStyle.Value1, reuseIdentifier:"Cell")
            cell.textLabel.text = self.sectionArray[indexPath.section].item[indexPath.row]
            var tmp=self.sectionArray[indexPath.section].cost[indexPath.row]
            if( cell.detailTextLabel != nil){
                cell.detailTextLabel!.text=tmp
            }
            cell.imageView.image = UIImage(named: self.images[self.sectionArray[indexPath.section].category[indexPath.row]])
            return cell
    }
    
    /* section headers
    appear above each `UITableView` section */
    override func tableView(tableView: UITableView,
        titleForHeaderInSection section: Int)
        -> String {
            // do not display empty `Section`s
            if !self.sectionArray[section].item.isEmpty {
                return self.sectionArray[section].header
            }
            return ""
    }
    
    
    
    
    
    
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
    
    // Configure the cell...
    
    return cell
    }
    */
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
