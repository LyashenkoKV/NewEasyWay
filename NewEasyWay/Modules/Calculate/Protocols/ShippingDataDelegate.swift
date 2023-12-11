//
//  ShippingDataDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 07.12.2023.
//

import Foundation

protocol ShippingDataDelegate: AnyObject {
    func didReceiveShippingData(_ data: ShippingRequest)
}
