//
//  ViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 25.10.2023.
//

import UIKit

final class LogisticViewController: UIViewController {
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { .portrait }
    
    lazy var tableView = UITableView()
    lazy var calculateButton = UIButton()
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
        createTableView(tableView: tableView)
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.base.rawValue)
        tableView.register(QuestionViewCell.self, forCellReuseIdentifier: CellIdentifier.question.rawValue)
        //createButton(button: calculateButton, with: "Рассчитать")
        calculateButton.createButton(view: self.view, action: #selector(calculateButtonTapped), title: "Рассчитать")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func calculateButtonTapped() {}
}
