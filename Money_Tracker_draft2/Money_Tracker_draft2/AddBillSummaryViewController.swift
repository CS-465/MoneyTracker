//
//  AddBillSummaryViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 12/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class AddBillSummaryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Total: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Title.text = billnew.Title
        Total.text = "$" + String(billnew.Money)
        categoryImage.image = UIImage(named: images[billnew.CategoryIndex])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupFriendInstance1.groupList[billnew.GroupIndex].peopleList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "group_cell")
        
        cell.textLabel!.text = groupFriendInstance1.groupList[billnew.GroupIndex].peopleList[indexPath.row].Name
        cell.detailTextLabel!.text = "$ " + String(billnew.Money/groupFriendInstance1.groupList[billnew.GroupIndex].peopleList.count)
        
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
