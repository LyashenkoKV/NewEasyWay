//
//  CreateButton.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

extension UIButton {
    func createButton(viewController: UIViewController, action: Selector, title: String) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = .appPurple
        self.layer.cornerRadius = 10
        self.setTitleColor(.white, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addTarget(viewController, action: action, for: .touchUpInside)
        
        viewController.view.addSubview(self)
        
        NSLayoutConstraint.activate([
            self.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor, constant: 50),
            self.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor, constant: -50),
            self.heightAnchor.constraint(equalToConstant: 40),
            self.bottomAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
