//
//  ApplicationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

class RequestViewController: BaseViewController {

    private let addRequestButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.request.rawValue)
        addRequestButton.createButton(viewController: self, action: #selector(addRequestButtonTapped), title: "Новая заявка")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func addRequestButtonTapped() {
        let calculateViewController = CalculateViewController()
        navigationController?.pushViewController(calculateViewController, animated: true)
    }
}
