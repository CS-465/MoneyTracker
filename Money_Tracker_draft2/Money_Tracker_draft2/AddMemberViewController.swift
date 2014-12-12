//
//  AddMemberViewController.swift
//  Money_Tracker_draft2
//
//  Created by Bei Zhang on 12/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class AddMemberViewController: UIViewController, UITextFieldDelegate,UIAlertViewDelegate {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var cellphone: UITextField!
    @IBOutlet weak var email: UITextField!
    
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
        
        
        name.delegate = self
        cellphone.delegate = self
        email.delegate = self
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
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        name.resignFirstResponder()
        email.resignFirstResponder()
        cellphone.resignFirstResponder()
        return true
    }

    @IBAction func cancelTouched(sender: UIButton) {
        alerView.show()
    }
    @IBAction func cancelClicked(sender: UIButton) {
        alerView.show()
    }
    
    
    @IBAction func okClicked(sender: UIButton) {
        var nnn: NSString = name.text
        if(nnn.isEqualToString(""))
        {
            alView.show()
            return
        }
        addpeopleToGroup(groupNew,name.text)
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
