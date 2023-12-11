//
//  ContactsTableViewDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 04.12.2023.
//

import UIKit

extension ContactsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let city = Cities(rawValue: indexPath.row),
              let detailsModel = detailsContactsModel.detailsData[city] else {
            return
        }
        
        let detailsViewController = DetailsViewController()
        detailsViewController.detailsModel = detailsModel
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
}
