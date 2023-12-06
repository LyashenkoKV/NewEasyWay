//
//  CreateLogoImageView.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.12.2023.
//

import UIKit

extension UIImageView {
    func create(viewController: UIViewController) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        self.image = UIImage(named: "logoPNG")
        
        viewController.view.addSubview(self)
        
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: 100),
            self.heightAnchor.constraint(equalToConstant: 20),
            self.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            self.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor)
        ])
    }
}
