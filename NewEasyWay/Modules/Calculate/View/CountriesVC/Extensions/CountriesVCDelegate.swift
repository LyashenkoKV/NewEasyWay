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
    }
}

