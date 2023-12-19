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
    weak var locationDelegate: LocationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTitle()
        updateCountries()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.country.rawValue)
    }
    
    private func updateTitle() {
        if let section = selectedSection {
            self.title = (section == .destination) ? "Пункт назначения" : "Пункт отправления"
        }
    }
}

