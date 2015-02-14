//
//  ViewController.swift
//  UILocalNotification
//
//  Created by VLT Labs on 2/14/15.
//  Copyright (c) 2015 jayang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configuringUILocalNotification()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configuringUILocalNotification(){
        var localNotification = UILocalNotification()
        localNotification.alertAction = "iOS8 Swift Local Notification"
        localNotification.alertBody = "Hello from Swift"
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 10)
        localNotification.category = "SWIFT_HELLO"
        localNotification.applicationIconBadgeNumber = 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)

        
    }

}

