//
//  AppDelegate.swift
//  Techelix UI Task
//
//  Created by Sabih Haris on 4/23/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var rootViewController: UIViewController? {
        return window?.rootViewController
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let rootViewController = releaseViewController()
        self.window?.rootViewController = rootViewController
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    private func releaseViewController() -> UIViewController {
        return HomeViewController.initWithNib()
    }

   


}

