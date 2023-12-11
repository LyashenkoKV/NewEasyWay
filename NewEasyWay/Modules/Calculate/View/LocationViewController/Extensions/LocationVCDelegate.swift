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
    }
}
