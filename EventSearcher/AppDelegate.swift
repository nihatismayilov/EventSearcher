//
//  AppDelegate.swift
//  EventSearcher
//
//  Created by Nazim Asadov on 29.08.22.
//

import UIKit
import presentation

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        // Nzm change to router after injection
        window?.rootViewController = FirstViewController()
        return true


        
    }
}
