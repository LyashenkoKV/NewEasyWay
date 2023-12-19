//
//  LocationViewControllerDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.12.2023.
//

import UIKit

extension LocationViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let location = selectedLocations?[indexPath.row] else { return }
        
        if let logisticVC = navigationController?.viewControllers.first(where: { $0 is CalculateViewController }) {
            delegate?.didSelectLocation(location: location)
            navigationController?.popToViewController(logisticVC, animated: true)
        }
    }
}
