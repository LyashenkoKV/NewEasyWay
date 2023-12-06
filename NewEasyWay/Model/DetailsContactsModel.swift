//
//  ContactsDetailsModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 05.12.2023.
//

import UIKit

struct DetailsModel {
    var officeAddress: String?
    var warehouseAddress: String?
}

struct DetailsContactsModel {
    lazy var detailsData: [Cities: DetailsModel] = [:]
    
    init() {
        setupCellData()
    }
    
    private mutating func setupCellData() {
        detailsData[.Moscow] = DetailsModel(officeAddress: "121351, г. Москва, ул.Молодогвардейская 57, оф. 323 Room 225, Bld. 57, Molodogvardeyskaya St., Moscow, Russia, 121351", warehouseAddress: "121351, г. Москва, ул. Молодогвардейская 57 Bld. 57, Molodogvardeyskaya St., Moscow, Russia, 121351")
        detailsData[.Krasnodar] = DetailsModel(officeAddress: "350049, г. Краснодар, ул. Красных Партизан 226 Bld. 226, Krasnykh Partizan St., Krasnodar, Russia, 350049")
        detailsData[.Blagoveshchensk] = DetailsModel(officeAddress: "675004, Амурская область, г. Благовещенск, ул. Зейская 137 Bld. 137, Zeyskaya St., Blagoveschensk, Amur region, Russia, 675004", warehouseAddress: "675000, Амурская область, г. Благовещенск, ул. Энергетическая 17/3 Bld. 17/3, Energeticheskaya St., Blagoveschensk, Amur region, Russia, 675000")
        detailsData[.Beijing] = DetailsModel(officeAddress: "office 1202, Bld 26 A, Chaowai St., Chaoyang district, Beijing, China 北京市朝阳区朝外大街26号A座1202室")
        detailsData[.Shenzhen] = DetailsModel(officeAddress: "Room 1706, Shekou Building, No.44, Shekou Shiyun Road, Haibin Community, Shekou Sub-district, Nanshan District, Shenzhen, 13544102150 (Igor) 广东省深圳市南山区蛇口街道海滨社区蛇口石云路44号蛇口大厦1706")
        detailsData[.Jinhua] = DetailsModel(warehouseAddress: "浙江省金华市义乌市后宅街道神舟路251号 7号楼1楼 新思路国际物流张小忠 18013151303 (Mr. Zhang)")
        detailsData[.Guangzhou] = DetailsModel(warehouseAddress: "广州市白云区夏花二路广东华侨友谊总 公司石马仓库新8仓席海鹤18200676090 (mr. Xi)")
        detailsData[.Heihe] = DetailsModel(warehouseAddress: "中国黑龙江省黑河市爱辉区 邮政编码: 164300")
    }
}
