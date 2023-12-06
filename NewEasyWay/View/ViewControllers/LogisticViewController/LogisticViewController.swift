//
//  ViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 25.10.2023.
//

import UIKit

final class LogisticViewController: UIViewController {
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { .portrait }
    
    private lazy var imageView = UIImageView()
    private lazy var calculateButton = UIButton()
    lazy var tableView = UITableView()
    lazy var logisticModel = LogisticModel()

    let itemCountsPerSection: [SectionKind: Int] = [
        .kindOfDelivery: 1,
        .destination: 2,
        .shipmentParam: 3,
        .shipmentQuest: 2
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        imageView.create(viewController: self)
        navigationItem.titleView = imageView
        tableView.createTableView(viewController: self, withFooter: false)
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.base.rawValue)
        tableView.register(QuestionViewCell.self, forCellReuseIdentifier: CellIdentifier.question.rawValue)
        calculateButton.createButton(viewController: self, action: #selector(calculateButtonTapped), title: "Рассчитать")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func calculateButtonTapped() {}
}
