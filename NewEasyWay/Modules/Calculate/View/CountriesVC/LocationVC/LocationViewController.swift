//
//  LocationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 22.11.2023.
//

import UIKit

final class LocationViewController: BaseViewController {
    
    private lazy var searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.location.rawValue)
        setup(searchController: searchController)
    }
    
    private func setup(searchController: UISearchController) {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите пункт отправления"
        view.addSubview(searchController.searchBar)
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
}
