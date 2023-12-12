//
//  CountryVCDataSource.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 12.12.2023.
//

import UIKit

extension CountriesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ShippingDatabase.countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.country.rawValue, for: indexPath) as? BaseCell else {
            return UITableViewCell()
        }
        cell.backgroundColor = .systemGray5
        cell.accessoryType = .disclosureIndicator
        let countries = Array(ShippingDatabase.countries.keys)
        let country = countries[indexPath.row]
        if let emoji = ShippingDatabase.countryEmojis[country] {
            cell.configure(image: emoji.image(), textTitle: country)
        }
        
        return cell
    }
}
