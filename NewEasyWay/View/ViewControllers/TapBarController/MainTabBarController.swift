//
//  MainTabBarController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    let mainViewCintroller = MainViewController()
    let logisticsCalculatiorViewController = LogisticViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViewControllers()
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
    
    private func addViewControllers() {
        let monochrome = UIImage.SymbolConfiguration.preferringMonochrome()
        guard let mainImage = UIImage(systemName: "shippingbox", withConfiguration: monochrome) else { return }
        guard let calcImage = UIImage(systemName: "plusminus", withConfiguration: monochrome) else { return }
        
        viewControllers = [
            generateNavigationController(rootViewController: mainViewCintroller, title: "Главная", image: mainImage),
            generateNavigationController(rootViewController: logisticsCalculatiorViewController, title: "Калькулятор", image: calcImage)
        ]
    }
 }
