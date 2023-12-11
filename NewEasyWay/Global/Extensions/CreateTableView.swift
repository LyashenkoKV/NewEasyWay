//
//  CreateTableView.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

extension UITableView {
    func createTableView(viewController: UIViewController, withFooter: Bool = false) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.separatorStyle = .none
        self.backgroundColor = .systemGray6
        self.sectionHeaderHeight = 0
        
        viewController.view.addSubview(self)
       
        let constraints: [NSLayoutConstraint] = [
            self.bottomAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.bottomAnchor),
            self.topAnchor.constraint(equalTo: viewController.view.safeAreaLayoutGuide.topAnchor),
            self.leadingAnchor.constraint(equalTo: viewController.view.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
