//
//  ApplicationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

class RequestViewController: UIViewController {

    private let imageView = UIImageView()
    private let addRequestButton = UIButton()
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        imageView.create(viewController: self)
        navigationItem.titleView = imageView
        addRequestButton.createButton(viewController: self, action: #selector(addRequestButtonTapped), title: "Новая заявка")
        tableView.createTableView(viewController: self, withFooter: false)
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.request.rawValue)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func addRequestButtonTapped() {
        let logisticViewController = LogisticViewController()
        navigationController?.pushViewController(logisticViewController, animated: true)
    }
}
