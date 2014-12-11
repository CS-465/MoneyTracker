//
//  GroupFriendModel.swift
//  Money_Tracker_draft2
//
//  Created by Da Shen on 11/11/14.
//  Copyright (c) 2014 UIUC. All rights reserved.
//

var groupFriendInstance1: GroupFriendModel = GroupFriendModel()

var bill1 = Bill(Title: "Grocery",  GroupIndex:0,Money:45,CategoryIndex:2)
var bill2 = Bill(Title: "Apt rent", GroupIndex:0, Money:800,CategoryIndex:4)
var bill3 = Bill(Title: "Gas", GroupIndex:1, Money:120,CategoryIndex:3)
var billnew = Bill(Title: "new", GroupIndex:0, Money:0,CategoryIndex:0)
var billList = [bill1,bill2,bill3]

var images=["food_30.png","clothes_30.png","grocery_30.png","gas_station_30.png","home_30.png"]

struct Bill {
    var Title:String
    var GroupIndex:Int
    var Money:Int
    var CategoryIndex:Int
}

struct People {
    var Name:String = "No-name"
    var Balance:Int = 0
}

struct Group {
    var Name:String = "No-name"
    var numOfPeople:Int = 0
    var peopleList:[People] = []
}

import UIKit

class GroupFriendModel: NSObject {
    
    var friendList = [People]()
    var groupList = [Group]()
    
    func initGroupList() {
        var g1 = Group(Name: "Apt 3", numOfPeople: 3, peopleList:[People(Name: "Cory", Balance: 0),People(Name: "James", Balance: 0),People(Name: "Jim", Balance: 0)])
        var g2 = Group(Name: "CS465 Group", numOfPeople: 5, peopleList: [People(Name: "Cory", Balance: 0),People(Name: "Diego", Balance: 0),People(Name: "Bei", Balance: 0),People(Name: "Da", Balance: 0),People(Name: "Chi-Hsien", Balance: 0)])
        var g3 = Group(Name: "Myself(Personal Bill)", numOfPeople: 1, peopleList: [People(Name: "Cory", Balance: 0)])
        groupList =  [g1,g2]    }
    
    func initFriendList() {
        var f1 = People(Name: "Diego", Balance: 0)
        var f2 = People(Name: "James", Balance: 0)
        var f3 = People(Name: "Jim", Balance: 0)
        var f4 = People(Name: "Bei", Balance: 0)
        var f5 = People(Name: "Da", Balance: 0)
        var f6 = People(Name: "Chi-Hsien", Balance: 0)
        var f7 = People(Name: "Tiffany", Balance: 0)
        
        friendList =  [f1,f2,f3,f4,f5,f6,f7]
    }
    
    
    func addFriend(name:String, balance:Int) {
        friendList.append(People(Name: name, Balance: 0))
    }
   
    func addGroup(name:String, numOfPeople:Int) {
        groupList.append(Group(Name: name, numOfPeople: numOfPeople, peopleList: []))
    }
    
    func addFriendToGroup(nameOfPerson:String, nameOfGroup:String) -> Bool {
        var targetIndex:Int! = -1
        var counter = 0
        
        for group in groupList {
            if group.Name == nameOfGroup {
                targetIndex = counter
            }
            counter++
        }
        
        // when the group is found
        if (targetIndex != -1) {
            groupList[targetIndex].peopleList.append(People(Name: nameOfPerson, Balance: 0))
            
            return true
        }
        
        return false
        
    }

}

func addBill(){
    billList.append(billnew)
}
