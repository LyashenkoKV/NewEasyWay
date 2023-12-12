//
//  AppVCDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 08.12.2023.
//

import UIKit

extension RequestViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
