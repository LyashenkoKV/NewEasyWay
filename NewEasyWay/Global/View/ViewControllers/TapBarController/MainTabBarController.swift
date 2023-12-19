//
//  MainTabBarController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
    private let mainViewController = MainViewController()
    private let logisticsCalculatiorViewController = CalculateViewController()
    private let applicationViewController = RequestViewController()
    private let contactsViewController = ContactsViewController()
    
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
        guard let mainImage = UIImage(systemName: "shippingbox", withConfiguration: monochrome),
              let calcImage = UIImage(systemName: "plusminus", withConfiguration: monochrome),
              let applImage = UIImage(systemName: "list.bullet", withConfiguration: monochrome),
              let contactsImage = UIImage(systemName: "phone.down", withConfiguration: monochrome) else { return }
        
        viewControllers = [
            generateNavigationController(rootViewController: mainViewController, title: "Главная", image: mainImage),
            generateNavigationController(rootViewController: logisticsCalculatiorViewController, title: "Калькулятор", image: calcImage),
            generateNavigationController(rootViewController: applicationViewController, title: "Мои заявки", image: applImage),
            generateNavigationController(rootViewController: contactsViewController, title: "Контакты", image: contactsImage)
        ]
    }
 }
