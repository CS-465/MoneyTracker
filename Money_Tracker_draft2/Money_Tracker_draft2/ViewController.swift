//
//  ViewController.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/10/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        profileName.text = username
        billList.initBillModel()
        groupFriendInstance1.initFriendList()
        groupFriendInstance1.initGroupList()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

