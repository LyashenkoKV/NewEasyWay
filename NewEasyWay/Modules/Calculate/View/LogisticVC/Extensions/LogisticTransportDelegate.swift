//
//  LogisticTransportDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import Foundation

extension LogisticViewController: TransportViewControllerDelegate {
    func didSelectTransport(_ transportType: TransportType, cellData: CellData) {
        logisticModel.sectionData[.kindOfDelivery]?.data = [cellData]
        shippingRequest?.deliveryMethod = transportType
        tableView.reloadData()
    }
}
