//
//  LogisticsCalculatorViewModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import UIKit

struct LogisticSectionData {
    var data: [CellData]
    var tintColor: UIColor
    
    init(data: [CellData], tintColor: UIColor) {
        self.data = data
        self.tintColor = tintColor
    }
}

enum SectionKind: Int, CaseIterable {
    case kindOfDelivery, destination, shipmentParam, shipmentQuest
}

struct CalculateModel {
    var sectionData: [SectionKind: LogisticSectionData] = [:]
    let defaultTintColor: UIColor = .systemGray
    
    init() {
        setupSectionData()
    }
    
    private mutating func setupSectionData() {
        sectionData[.kindOfDelivery] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "truck.box"), textTitle: "Способ доставки", tintColor: defaultTintColor)
        ], tintColor: defaultTintColor)
        sectionData[.destination] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "mappin.and.ellipse"), textTitle: "Пункт отправления", tintColor: defaultTintColor),
            CellData(image: UIImage(systemName: "mappin.and.ellipse"), textTitle: "Пункт назначения", tintColor: defaultTintColor)
        ], tintColor: defaultTintColor)
        sectionData[.shipmentParam] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "pencil.line"), textTitle: "Наименование товара", tintColor: defaultTintColor),
            CellData(image: UIImage(systemName: "scalemass"), textTitle: "Вес груза", tintColor: defaultTintColor),
            CellData(image: UIImage(systemName: "ruler"), textTitle: "Объем груза", tintColor: defaultTintColor),
        ], tintColor: defaultTintColor)
        sectionData[.shipmentQuest] = LogisticSectionData(data: [
            CellData(image: UIImage(systemName: "doc.questionmark"), textTitle: "Таможенное оформление", tintColor: defaultTintColor),
            CellData(image: UIImage(systemName: "shippingbox.and.arrow.backward"), textTitle: "Груз готов к отправке?", tintColor: defaultTintColor)
        ], tintColor: defaultTintColor)
    }
}
