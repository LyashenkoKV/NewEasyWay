//
//  BaseViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 12.12.2023.
//

import UIKit

class BaseViewController: UIViewController {
    
    let tableView = UITableView()
    private let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        imageView.create(viewController: self)
        navigationItem.titleView = imageView
        tableView.createTableView(viewController: self, withFooter: false)
    }
}
