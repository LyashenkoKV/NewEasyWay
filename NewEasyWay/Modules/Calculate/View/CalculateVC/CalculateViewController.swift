//
//  ViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 25.10.2023.
//

import UIKit

final class CalculateViewController: BaseViewController {
    
    var transportType: TransportType?
    var calculateModel: CalculateModel?
    private let calculateButton = UIButton()
    private let viewModel: CalculatorViewModel
    
    var selectedIndexPath: IndexPath? // TODO
    
    init(viewModel: CalculatorViewModel = CalculatorViewModel()) {
        self.viewModel = viewModel
        self.calculateModel = CalculateModel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.base.rawValue)
        tableView.register(QuestionViewCell.self, forCellReuseIdentifier: CellIdentifier.question.rawValue)
        calculateButton.createButton(viewController: self, action: #selector(calculateButtonTapped), title: "Рассчитать")
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc private func calculateButtonTapped() {
        if let cost = viewModel.calculateShippingCost() {
            print("Shipping cost: \(cost)")
        } else {
            print("Failed to calculate shipping cost.")
        }
    }
}

