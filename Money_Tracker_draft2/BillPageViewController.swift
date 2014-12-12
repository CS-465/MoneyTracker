//
//  BillPageViewController.swift
//  Money_Tracker_draft2
//
//  Created by Bei Zhang on 12/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class BillPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var seletedBillIndex :Int = 0
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var billTitle: UILabel!
    @IBOutlet weak var billTime: UILabel!
    @IBOutlet weak var billGroup: UILabel!
    @IBOutlet weak var billTotal: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        var categoryIndexforThisBill = billList.billList[seletedBillIndex].CategoryIndex
        var groupIndexforThisBill = billList.billList[seletedBillIndex].GroupIndex
        
        categoryImage.image = UIImage(named: images[categoryIndexforThisBill])
        billTitle.text = billList.billList[seletedBillIndex].Title
        billTime.text = billList.billList[seletedBillIndex].Time
        billGroup.text = groupFriendInstance1.groupList[groupIndexforThisBill].Name
        billTotal.text = "$ " + String(billList.billList[seletedBillIndex].Money)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupFriendInstance1.groupList[billList.billList[seletedBillIndex].GroupIndex].peopleList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "group_cell")
        
        cell.textLabel!.text = groupFriendInstance1.groupList[billList.billList[seletedBillIndex].GroupIndex].peopleList[indexPath.row].Name
        cell.detailTextLabel!.text = "$ " + String((billList.billList[seletedBillIndex].Money)/(groupFriendInstance1.groupList[billList.billList[seletedBillIndex].GroupIndex].peopleList.count))
        
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
