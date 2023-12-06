//
//  LogisticsCalculatorViewModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import UIKit

struct LogisticSectionData {
    var data: [CellData]
    
    init(data: [CellData]) {
        self.data = data
    }
}

enum SectionKind: Int, CaseIterable {
    case kindOfDelivery, destination, shipmentParam, shipmentQuest
}

struct LogisticModel {
    lazy var sectionData: [SectionKind: LogisticSectionData] = [:]
    
    init() {
        setupSectionData()
    }
    
    private mutating func setupSectionData() {
        sectionData[.kindOfDelivery] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "truck.box"), textTitle: "Способ доставки")
        ])
        sectionData[.destination] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "mappin.and.ellipse"), textTitle: "Пункт отправления"),
            CellData(image: UIImage(systemName: "mappin.and.ellipse"), textTitle: "Пункт назначения")
        ])
        sectionData[.shipmentParam] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "pencil.line"), textTitle: "Наименование товара"),
            CellData(image: UIImage(systemName: "scalemass"), textTitle: "Вес груза"),
            CellData(image: UIImage(systemName: "ruler"), textTitle: "Объем груза"),
        ])
        sectionData[.shipmentQuest] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "doc.questionmark"), textTitle: "Таможенное оформление"),
            CellData(image: UIImage(systemName: "shippingbox.and.arrow.backward"), textTitle: "Груз готов к отправке?")
        ])
    }
}
