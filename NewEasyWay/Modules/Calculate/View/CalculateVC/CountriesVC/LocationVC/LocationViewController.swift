//
//  LocationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 22.11.2023.
//

import UIKit

final class LocationViewController: BaseViewController {
    
    var logisticModel = CalculateModel()
    var selectedLocations: [String]?
    
    weak var delegate: LocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.location.rawValue)
    }
}
