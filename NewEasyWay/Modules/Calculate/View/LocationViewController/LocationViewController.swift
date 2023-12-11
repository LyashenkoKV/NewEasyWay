//
//  LocationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 22.11.2023.
//

import UIKit

final class LocationViewController: UIViewController {
    
    let tableView = UITableView()
    
    private let imageView = UIImageView()
    private lazy var searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        tableView.dataSource = self
        tableView.delegate = self
        imageView.create(viewController: self)
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.location.rawValue)
        navigationItem.titleView = imageView
        tableView.createTableView(viewController: self)
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
