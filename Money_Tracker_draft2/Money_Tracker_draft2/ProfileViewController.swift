//
//  ProfileViewController.swift
//  Money_Tracker_draft2
//
//  Created by Bei Zhang on 12/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var profileName: UITextField!
    @IBOutlet weak var cellPhone: UITextField!
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileName.delegate=self
        cellPhone.delegate=self
        email.delegate=self
        
        profileName.text = username
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        username = profileName.text
        textField.resignFirstResponder()
        return true;
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
