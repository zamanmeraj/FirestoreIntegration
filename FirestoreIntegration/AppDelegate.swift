//
//  AppDelegate.swift
//  FirestoreIntegration
//
//  Created by Zaman Meraj on 19/01/20.
//  Copyright © 2020 Zaman Meraj. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        // Add a new document with a generated ID
        let db = Firestore.firestore()
        
        let userDoc = db.collection("users").document("userDocument")
        userDoc.setData([
            "first": "Steve",
            "last": "Austin",
            "born": 1965
        ]) { (error) in
            if let err = error {
                print(err.localizedDescription)
            }else {
                print("Data Updated successfully..!!!")
            }
        }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
