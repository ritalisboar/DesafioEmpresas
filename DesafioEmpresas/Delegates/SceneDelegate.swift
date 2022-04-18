//
//  SceneDelegate.swift
//  DesafioEmpresas
//
//  Created by Rita Lisboa on 12/04/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        let nav = UINavigationController(rootViewController: LoginViewController())
        window?.rootViewController = nav
        
        UINavigationBar.appearance().barTintColor = UIColor.systemPink
    }

//    func sceneDidDisconnect(_ scene: UIScene) {
//    }
//
//    func sceneDidBecomeActive(_ scene: UIScene) {
//    }
//
//    func sceneWillResignActive(_ scene: UIScene) {
//    }
//
//    func sceneWillEnterForeground(_ scene: UIScene) {
//    }
//
//    func sceneDidEnterBackground(_ scene: UIScene) {
//    }
}

