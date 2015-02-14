//
//  AppDelegate.swift
//  UILocalNotification
//
//  Created by VLT Labs on 2/14/15.
//  Copyright (c) 2015 jayang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        /*

        Interactive Notification ingredients = UIMutableUserNotificationAction, UIMutableUserNotificationCategory
        
        authenticationRequired = useful especially when device is locked. Setting to yes would mean notification only works when device is unlock
        actitivationMode = Action performed during foreground or background
        
        
        */
        
        var notificationActionOK = UIMutableUserNotificationAction()
        notificationActionOK.identifier = "ACCEPT_IDENTIFIER"
        notificationActionOK.title = "OK"
        notificationActionOK.destructive = false
        notificationActionOK.authenticationRequired = false
        notificationActionOK.activationMode = UIUserNotificationActivationMode.Foreground
        
        var notificationActionCancel = UIMutableUserNotificationAction()
        notificationActionCancel.identifier = "NOT_NOW_IDENTIFIER"
        notificationActionCancel.title = "Not Now"
        notificationActionCancel.destructive = false
        notificationActionCancel.authenticationRequired = false
        notificationActionCancel.activationMode = UIUserNotificationActivationMode.Background
        
        var notificationCategory = UIMutableUserNotificationCategory()
        notificationCategory.identifier = "SWIFT_HELLO"
        notificationCategory.setActions([notificationActionOK,notificationActionCancel], forContext: UIUserNotificationActionContext.Default)
        notificationCategory.setActions([notificationActionOK,notificationActionCancel], forContext: UIUserNotificationActionContext.Minimal)
        
        var userLocalNotification = UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert | UIUserNotificationType.Badge, categories: NSSet(array:[notificationCategory]))
        application.registerUserNotificationSettings(userLocalNotification)
        application.applicationIconBadgeNumber = 1
        
        
        /*
        
        Code below is for basic UILocalNotification, no interactive notification
        

        var userLocalNotification = UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert | UIUserNotificationType.Badge, categories: nil)
        application.registerUserNotificationSettings(userLocalNotification)
        
        */
        
        return true
    }
    

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        
        application.applicationIconBadgeNumber = 0
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
        application.applicationIconBadgeNumber = 0
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

