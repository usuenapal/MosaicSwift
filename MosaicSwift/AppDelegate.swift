//
//  AppDelegate.swift
//  MosaicSwift
//
//  Created by Usue on 8/11/15.
//  Copyright © 2015 Usue. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate
{
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        let mainView = ViewController(nibName: "ViewController", bundle: nil)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainView
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication){}
    func applicationDidEnterBackground(_ application: UIApplication){}
    func applicationWillEnterForeground(_ application: UIApplication){}
    func applicationDidBecomeActive(_ application: UIApplication){}
    func applicationWillTerminate(_ application: UIApplication){}
}

