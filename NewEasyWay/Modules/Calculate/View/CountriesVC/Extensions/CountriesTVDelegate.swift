//
//  CountryVCDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 12.12.2023.
//

import UIKit

extension CountriesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let countries = Array(ShippingDatabase.countries.keys)
        let country = countries[indexPath.row]
        
        guard let citiesByTransport = ShippingDatabase.countries[country],
              let selectedTransport = selectedDeliveryMethod,
              let location = citiesByTransport[selectedTransport] else {
            return
        }
        
        let locationVC = LocationViewController()
        locationVC.selectedLocations = location
        
        navigationController?.pushViewController(locationVC, animated: true)
    }
}
