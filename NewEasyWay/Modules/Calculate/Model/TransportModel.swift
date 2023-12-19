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
    var cellData: [TransportType: CellData] = [:]
    let baseColor: UIColor = .appGreen
    
    init() {
        setupCellData()
    }
    
    private mutating func setupCellData() {
        cellData[.air] = CellData(image: UIImage(systemName: "airplane"), textTitle: "Авиадоставка", tintColor: baseColor)
        cellData[.auto] = CellData(image: UIImage(systemName: "truck.box"), textTitle: "Автодоставка", tintColor: baseColor)
        cellData[.railway] = CellData(image: UIImage(systemName: "tram"), textTitle: "Ж/Д доставка", tintColor: baseColor)
        cellData[.sea] = CellData(image: UIImage(systemName: "ferry"), textTitle: "Морская доставка", tintColor: baseColor)
        cellData[.multimodal] = CellData(image: UIImage(systemName: "globe"), textTitle: "Мультимодальные перевозки", tintColor: baseColor)
    }
}
