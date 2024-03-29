//
//  LogisticCalcVCDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 21.11.2023.
//

import UIKit

// MARK: - UICollectionViewDelegate
extension CalculateViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let section = SectionKind(rawValue: indexPath.section) else { return }
        
        switch section {
        case .kindOfDelivery:
            handleTransportCellSelection(at: indexPath)
        case .destination:
            handleDestinationCellSelection(at: indexPath)
            selectedIndexPath = indexPath
        case .shipmentParam: break
        case .shipmentQuest: break
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    private func handleTransportCellSelection(at indexPath: IndexPath) {
        let transportVC = TransportViewController()
        transportVC.delegate = self
        navigationController?.pushViewController(transportVC, animated: true)
    }
    
    private func handleDestinationCellSelection(at indexPath: IndexPath) {
        let countriesVC = CountriesViewController()
        let locationVC = LocationViewController()
        locationVC.delegate = self
        countriesVC.selectedSection = SectionKind(rawValue: indexPath.row)
        countriesVC.selectedDeliveryMethod = transportType
        countriesVC.locationDelegate = locationVC.delegate
        navigationController?.pushViewController(countriesVC, animated: true)
    }
}
