//
//  ProfileGroupsViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

var selectedGroupIndex:Int!

class ProfileGroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPopoverPresentationControllerDelegate {

    //var selectedGroupIndex:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupFriendInstance1.groupList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "group_cell")
        
        cell.textLabel.text = groupFriendInstance1.groupList[indexPath.row].Name
        cell.detailTextLabel!.text = String(groupFriendInstance1.groupList[indexPath.row].numOfPeople) + " members"
        
        return cell
    }

    
    
    // the class for a subview memberTableViewController
    
    class MembersTableViewController: UITableViewController {
        
        
        var groupIndexPassed:Int! = selectedGroupIndex
        
        override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        // #pragma mark - Table view data source
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            //println("\(groupFriendInstance1.groupList[groupIndexPassed].peopleList.count)")
            return groupFriendInstance1.groupList[groupIndexPassed].peopleList.count
        }
        
        
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "group_member_cell")
            cell.textLabel.text = groupFriendInstance1.groupList[groupIndexPassed].peopleList[indexPath.row].Name
            cell.detailTextLabel!.text = "$ " + String(groupFriendInstance1.groupList[groupIndexPassed].peopleList[indexPath.row].Balance)
            
            return cell
        }
        
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedGroupIndex = indexPath.row
        
        let members:MembersTableViewController = MembersTableViewController(style: UITableViewStyle.Plain)
        members.groupIndexPassed = indexPath.row
        
        let navVC = UINavigationController(rootViewController: members)
        navVC.modalPresentationStyle = .Popover
        var backButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.Plain, target: self, action: "btnBackPressed:")
        

        members.navigationItem.leftBarButtonItem = backButton
        
        var popover = navVC.popoverPresentationController
        navVC.preferredContentSize = CGSizeMake(300, 300)
        popover?.permittedArrowDirections = .Any
        popover?.delegate = self
        popover?.sourceView = self.view
        popover?.sourceRect = CGRectMake(100,100,0,0)
        
        presentViewController(navVC, animated: true, completion: nil)
        
        
    }
    
    @IBAction func btnBackPressed(sender:AnyObject?) {
        dismissViewControllerAnimated(false, nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
