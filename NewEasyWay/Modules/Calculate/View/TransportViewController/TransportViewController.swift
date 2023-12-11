//
//  TransportViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

final class TransportViewController: UIViewController {
    
    weak var delegate: TransportViewControllerDelegate?
    let tableView = UITableView()
    let transportModel = TransportModel()
    private let imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        imageView.create(viewController: self)
        navigationItem.titleView = imageView
        tableView.createTableView(viewController: self, withFooter: false)
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.transport.rawValue)
        tableView.delegate = self
        tableView.dataSource = self
    }
}
