//
//  AppDelegate.swift
//  Swift-flow
//
//  Created by 白蜡树 on 2019/2/11.
//  Copyright © 2019 白蜡树. All rights reserved.
//

import UIKit
import CoreData
import ESTabBarController_swift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate,UITabBarControllerDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        let vc = ViewController.init();
//        let naVC = UINavigationController.init(rootViewController: vc)
//
        let tab = self.customIrregularityStyle();
        
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = tab
        

        window?.makeKeyAndVisible();
        
        return true
    }
    
    func customIrregularityStyle() -> ESTabBarController {
        let tabBar = ESTabBarController()
        tabBar.delegate = self
        tabBar.title = "Mr.cao"
        tabBar.tabBar.shadowImage = UIImage(named: "transparent")
        
        let v1 = FMHomeViewController();
        let v2 = FMListenController()
        let v3 = FMPlayController()
        let v4 = FMFindController()
        let v5 = FMMineController()
        
        v1.tabBarItem = ESTabBarItem.init(YYIrregularityBasicContentView(), title: "home", image: UIImage(named: "home"), selectedImage: UIImage(named: ""))
        v2.tabBarItem = ESTabBarItem.init(YYIrregularityBasicContentView(), title: "我听", image: UIImage(named: "find"), selectedImage: UIImage(named: "find_1"))
        v3.tabBarItem = ESTabBarItem.init(YYIrregularityContentView(), title: nil, image: UIImage(named: "tab_play"), selectedImage: UIImage(named: "tab_play"))
        v4.tabBarItem = ESTabBarItem.init(YYIrregularityBasicContentView(), title: "发现", image: UIImage(named: "favor"), selectedImage: UIImage(named: "favor_1"))
        v5.tabBarItem = ESTabBarItem.init(YYIrregularityBasicContentView(), title: "我的", image: UIImage(named: "me"), selectedImage: UIImage(named: "me_1"))
        
        let n1 = YYNavigationController.init(rootViewController: v1)
        let n2 = YYNavigationController.init(rootViewController: v2)
        let n3 = YYNavigationController.init(rootViewController: v3)
        let n4 = YYNavigationController.init(rootViewController: v4)
        let n5 = YYNavigationController.init(rootViewController: v5)
        v1.title = "首页"
        v2.title = "我听"
        v3.title = "播放"
        v4.title = "发现"
        v5.title = "我的"
        
        tabBar.viewControllers = [n1, n2, n3, n4, n5]
        
        return tabBar;
        
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "Swift_flow")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

