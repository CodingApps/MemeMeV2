//
//  AppDelegate.swift
//  MemeMeV2d
//
//  Created by Rick Mc on 5/13/18.
//  Copyright © 2018 Rick Mc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var myMemes = [Meme]()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}

