//
//  AddGroupViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/10/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIAlertViewDelegate {

    @IBOutlet weak var nameGroup: UITextField!
    
    var alerView:UIAlertView = UIAlertView()
    
    var alView:UIAlertView = UIAlertView()
    
        override func viewDidLoad() {
            super.viewDidLoad()
            alerView.title = "Back to previous page!"
            alerView.message = "Data you inputed will be lost"
            alerView.delegate = self
            alerView.addButtonWithTitle("Cancel")
            alerView.addButtonWithTitle("OK")
            alView.title = "No Name Inputed"
            alView.message = "Please Type In Some Name"
            alView.addButtonWithTitle("OK")
        
        // Do any additional setup after loading the view.
    }

    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if(buttonIndex == 1)
        {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else
        {
            alertView.hidden = true
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        nameGroup.resignFirstResponder()
        groupNew.Name = nameGroup.text
        return true
    }
    @IBAction func btnAddGroup(sender: UIButton) {
        var nnn: NSString = nameGroup.text
        if(nnn.isEqualToString(""))
        {
            alView.show()
            return
        }
        
        groupFriendInstance1.addGroup(groupNew)
        self.view.endEditing(true)
        nameGroup.text = ""
        
        if((self.presentingViewController) != nil){
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    @IBAction func backClicked(sender: UIButton) {
        
        alerView.show()
    }
    
    @IBAction func CancelClicked(sender: UIButton) {
        
        alerView.show()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupNew.peopleList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "group_cell")
        
        if(indexPath.row == 0){
            cell.textLabel!.text = "Myself"
        }
        else{
            cell.textLabel!.text = groupNew.peopleList[indexPath.row].Name
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
