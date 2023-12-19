//
//  ContactsModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 04.12.2023.
//

import UIKit

enum Cities: Int, CaseIterable {
    case Moscow, Krasnodar, Blagoveshchensk, Beijing, Shenzhen, Jinhua, Guangzhou, Heihe
}

struct ContactsModel {
    var cellData: [Cities: CellData] = [:]
    
    init() {
        setupCellData()
    }
    
    private mutating func setupCellData() {
        cellData[.Moscow] = CellData(image: UIImage(systemName: "globe.central.south.asia"), textTitle: "Москва", tintColor: .systemGray)
        cellData[.Krasnodar] = CellData(image: UIImage(systemName: "globe.central.south.asia"), textTitle: "Краснодар", tintColor: .systemGray)
        cellData[.Blagoveshchensk] = CellData(image: UIImage(systemName: "globe.central.south.asia"), textTitle: "Благовещенск", tintColor: .systemGray)
        cellData[.Beijing] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Пекин", tintColor: .systemGray)
        cellData[.Shenzhen] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Шэнчжень", tintColor: .systemGray)
        cellData[.Jinhua] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Иу", tintColor: .systemGray)
        cellData[.Guangzhou] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Гуанчжоу", tintColor: .systemGray)
        cellData[.Heihe] = CellData(image: UIImage(systemName: "globe.asia.australia"), textTitle: "Хэйхэ", tintColor: .systemGray)
    }
}
