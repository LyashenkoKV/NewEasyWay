//
//  SceneDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 25.10.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        
        let viewController = MainTabBarController()
        viewController.tabBar.tintColor = .darkGray
        let window = UIWindow(windowScene: windowScene)
        
        self.window = window
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        
    }
}

