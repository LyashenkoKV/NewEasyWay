//
//  LogisticTransportDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

extension CalculateViewController: TransportDelegate {

    func didSelectTransport(_ transportType: TransportType, cellData: CellData, tintColor: UIColor) {
        self.transportType = transportType
        //calculateModel?.sectionData[.kindOfDelivery]?.data = [cellData]
        if var kindOfDeliverySection = calculateModel?.sectionData[.kindOfDelivery] {
            kindOfDeliverySection.data = [cellData]
            kindOfDeliverySection.tintColor = tintColor
            calculateModel?.sectionData[.kindOfDelivery] = kindOfDeliverySection
        }
        tableView.reloadData()
    }
}
