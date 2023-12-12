//
//  TransportViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

final class TransportViewController: BaseViewController {
    
    weak var delegate: TransportViewControllerDelegate?
    let transportModel = TransportModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.transport.rawValue)
        tableView.delegate = self
        tableView.dataSource = self
    }
}
