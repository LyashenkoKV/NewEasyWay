//
//  ViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 25.10.2023.
//

import UIKit

final class LogisticViewController: UIViewController {
    
    var logisticModel = LogisticModel()
    var shippingRequest: ShippingRequest?
    let tableView = UITableView()
    private let viewModel = CalculatorViewModel()
    private let imageView = UIImageView()
    private let calculateButton = UIButton()
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { .portrait }

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
    
    @objc func calculateButtonTapped() {
        if let cost = viewModel.calculateShippingCost() {
            print("Shipping cost: \(cost)")
        } else {
            print("Failed to calculate shipping cost.")
        }
    }
}
