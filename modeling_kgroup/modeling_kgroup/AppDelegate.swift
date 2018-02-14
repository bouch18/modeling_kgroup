//
//  AppDelegate.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/11/09.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import Material
import AMXFontAutoScale
import Graph

let startViewController = ViewController()

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let defaults = UserDefaults.standard
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if defaults.integer(forKey: "int") == 1{
        SampleData.createSampleData()

        let graph = Graph()
        let search = Search<Entity>(graph: graph).for(types: "Category")

        var viewControllers = [PostsViewController]()

        for category in search.sync() {
            if let name = category["name"] as? String {
                viewControllers.append(PostsViewController(category: name))
            }
        }

//        let appToolbarController = AppToolbarController(secondViewController: secondViewController)
//        let toolbarController = AppToolbarController(rootViewController: tabsController)
//        let menuController = AppFABMenuController(rootViewController: toolbarController)
        let tabsController = AppTabsController(viewControllers: viewControllers)
        let toolbarController = AppToolbarController(rootViewController: tabsController)
        let menuController = AppFABMenuController(rootViewController: toolbarController)

        window = UIWindow(frame: Screen.bounds)
        window!.rootViewController = menuController
        } else{
            window = UIWindow(frame: Screen.bounds)
            window!.rootViewController = startViewController
        }
//        window!.makeKeyAndVisible()
        
        // Override point for customization after application launch.
        UILabel.amx_autoScaleFont(forReferenceScreenSize: .size4p7Inch)
        UITextView.amx_autoScaleFont(forReferenceScreenSize: .size4p7Inch)

//        window = UIWindow(frame: Screen.bounds)
//        window!.rootViewController = startViewController
//        window!.rootViewController = TableViewController
        window!.makeKeyAndVisible()
        
//        sleep(3);
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        print("アプリ閉じそうな時に呼ばれる")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("アプリを閉じた時に呼ばれる")
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("アプリを開きそうな時に呼ばれる")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("アプリを開いた時に呼ばれる")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("フリックしてアプリを終了させた時に呼ばれる")
    }


}

