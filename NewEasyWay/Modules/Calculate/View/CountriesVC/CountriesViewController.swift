//
//  CountryViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 12.12.2023.
//

import UIKit

class CountriesViewController: BaseViewController {
    
    var selectedSection: SectionKind?
    var selectedDeliveryMethod: TransportType?
    var countriesArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTitle()
        updateCountries()
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.country.rawValue)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    private func updateTitle() {
        if let section = selectedSection {
            self.title = (section == .destination) ? "Пункт назначения" : "Пункт отправления"
        }
    }
}

