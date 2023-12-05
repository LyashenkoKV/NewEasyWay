//
//  ContactsModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 04.12.2023.
//

import UIKit

struct ContactsModel {
    var cellData: [Cities: CellData] = [:]
    
    init() {
        setupCellData()
    }
    
    private mutating func setupCellData() {
        cellData[.Moscow] = CellData(image: UIImage(systemName: "globe.central.south.asia"), textTitle: "Москва")
        cellData[.Krasnodar] = CellData(image: UIImage(systemName: "globe.central.south.asia"), textTitle: "Краснодар")
        cellData[.Blagoveshchensk] = CellData(image: UIImage(systemName: "globe.central.south.asia"), textTitle: "Благовещенск")
        cellData[.Beijing] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Пекин")
        cellData[.Shenzhen] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Шэнчжень")
        cellData[.Jinhua] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Иу")
        cellData[.Guangzhou] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Гуанчжоу")
        cellData[.Heihe] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Хэйхэ")
    }
}
