//
//  AppDelegate.swift
//  MovieDBAPIDemo
//
//  Created by Abdoulaye Diallo on 3/10/19.
//  Copyright © 2019 Abdoulaye Diallo. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        let components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        if components?.scheme == "themoviemanager" && components?.path == "authenticate" {
            let loginVC = window?.rootViewController as! LoginViewController
            _ = TMDBClient.createSessionId(completion: loginVC.handleSessionResponse(success:error:))
        }
        return true
    }
}

