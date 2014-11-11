//
//  AddGroupViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/10/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var nameGroup: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        nameGroup.resignFirstResponder()
        
        return true
    }
    
    @IBAction func btnAddGroup(sender: UIButton) {
        groupFriendInstance1.addGroup(nameGroup.text, numOfPeople: 0)
        
        self.view.endEditing(true)
        nameGroup.text = ""
        
        if((self.presentingViewController) != nil){
            self.dismissViewControllerAnimated(true, completion: nil)
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
