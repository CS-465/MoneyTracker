//
//  ProfileFriendsViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class ProfileFriendsViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupFriendInstance1.friendList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "friend_cell")
        
        cell.textLabel!.text = groupFriendInstance1.friendList[indexPath.row].Name
        cell.detailTextLabel!.text = "$" + String(groupFriendInstance1.friendList[indexPath.row].Balance)
        
        return cell
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
