//
//  TransportViewModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

enum TransportType: Int, CaseIterable {
    case auto, air, railway, sea, multimodal
}

struct TransportModel {
    lazy var cellData: [TransportType: CellData] = [:]
    
    init() {
        setupCellData()
    }
    
    private mutating func setupCellData() {
        cellData[.air] = CellData(image: UIImage(systemName: "airplane"), textTitle: "Авиадоставка")
        cellData[.auto] = CellData(image: UIImage(systemName: "truck.box"), textTitle: "Автодоставка")
        cellData[.railway] = CellData(image: UIImage(systemName: "tram"), textTitle: "Ж/Д доставка")
        cellData[.sea] = CellData(image: UIImage(systemName: "ferry"), textTitle: "Морская доставка")
        cellData[.multimodal] = CellData(image: UIImage(systemName: "globe"), textTitle: "Мультимодальные перевозки")
    }
}
