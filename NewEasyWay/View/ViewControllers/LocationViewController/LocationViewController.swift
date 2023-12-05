//
//  LocationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 22.11.2023.
//

import UIKit

final class LocationViewController: UIViewController {

    private lazy var searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Введите пункт отправления"
        return searchController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        setupSearchController()
    }
    
    private func setupSearchController() {
        view.addSubview(searchController.searchBar)
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
}
