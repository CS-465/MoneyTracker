//
//  AddBillGroupSelectionViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 12/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//


import UIKit

//var selectedGroupIndex:Int!

class AddBillGroupSelectionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPopoverPresentationControllerDelegate {
    
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
        
        if(indexPath.row == 0){
            cell.textLabel!.text = groupFriendInstance1.groupList[indexPath.row].Name
            cell.detailTextLabel!.text = ""
            cell.imageView!.image = UIImage(named:"star.png")
        }
        else{
            cell.textLabel!.text = groupFriendInstance1.groupList[indexPath.row].Name
            cell.detailTextLabel!.text = String(groupFriendInstance1.groupList[indexPath.row].numOfPeople) + " members"
        }
        return cell
    }
    
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedGroupIndex = indexPath.row
        
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
