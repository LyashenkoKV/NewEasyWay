//
//  TransportTableViewDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

extension TransportViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let selectedTransportType = TransportType(rawValue: indexPath.row),
              let selectedCellData = transportModel.cellData[selectedTransportType] else {
            return
        }
        
        delegate?.didSelectTransport(selectedTransportType, cellData: selectedCellData, tintColor: .appGreen)
        navigationController?.popViewController(animated: true)
    }
}
