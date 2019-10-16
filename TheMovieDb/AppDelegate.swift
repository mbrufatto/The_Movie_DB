//
//  AppDelegate.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        let moviesVc = HomeViewController()
        let navController = UINavigationController(rootViewController: moviesVc)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
        return true
    }
}

