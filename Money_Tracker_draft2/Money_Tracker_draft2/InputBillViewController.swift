//
//  InputBillViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/10/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class InputBillViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Name : UITextField!
    @IBOutlet weak var Total : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        Name.delegate = self
//        Total.delegate = self
//        Cory.delegate = self
//        Diego.delegate = self
//        Da.delegate = self
//        Bei.delegate = self
//        Chi.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        Name.resignFirstResponder()
        Total.resignFirstResponder()
        
        return true
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
