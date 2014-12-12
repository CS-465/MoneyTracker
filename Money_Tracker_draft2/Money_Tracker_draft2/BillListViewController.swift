//
//  BillListViewController.swift
//  Money_Tracker_draft2
//
//  Created by Bei Zhang on 12/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//


import UIKit

class BillListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var selectedIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return billList.billList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "group_cell")
        
            cell.textLabel!.text = billList.billList[indexPath.row].Title
            cell.detailTextLabel!.text = "$"+String(billList.billList[indexPath.row].Money)
            cell.imageView!.image = UIImage(named:images[billList.billList[indexPath.row].CategoryIndex])

        return cell
    }
    
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedIndex = indexPath.row
        self.performSegueWithIdentifier("to_bill", sender: selectedIndex)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "to_bill")
        {
            let billVC : BillPageViewController = segue.destinationViewController as BillPageViewController
            let data = sender as Int
            billVC.seletedBillIndex = data
            
        }
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
