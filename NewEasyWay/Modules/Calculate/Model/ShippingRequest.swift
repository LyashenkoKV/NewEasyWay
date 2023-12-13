//
//  ShippingRequest.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

struct ShippingRequest {
    var deliveryMethod: TransportType
    var from: String
    var to: String
    var itemName: String
    var weight: Double
    var volume: Double
    var customClearance: Bool
    var readyForShipment: Bool
}


