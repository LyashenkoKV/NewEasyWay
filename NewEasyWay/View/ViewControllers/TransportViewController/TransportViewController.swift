//
//  TransportViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

final class TransportViewController: UIViewController {
    
    lazy var tableView = UITableView()
    lazy var transportModel = TransportModel()
    
    weak var delegate: TransportViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        tableView.createTableView(viewController: self, withFooter: false)
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.transport.rawValue)
        tableView.delegate = self
        tableView.dataSource = self
    }
}
