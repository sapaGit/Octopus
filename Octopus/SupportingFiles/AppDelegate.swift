//
//  AppDelegate.swift
//  Octopus
//
//  Created by Sergey Pavlov on 06.01.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootNC = UINavigationController(rootViewController: MainViewController())
  
        window?.rootViewController = rootNC
        window?.makeKeyAndVisible()
        return true
    }

   


}

