//
//  LogisticTransportDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import Foundation

extension CalculateViewController: TransportDelegate {
    
    func didSelectTransport(_ transportType: TransportType, cellData: CellData) {
        self.transportType = transportType
        calculateModel?.sectionData[.kindOfDelivery]?.data = [cellData]
        tableView.reloadData()
    }
}
