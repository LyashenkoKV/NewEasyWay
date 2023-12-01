//
//  ShippingRequest.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

struct ShippingRequest {
    let from: String
    let to: String
    let itemName: String
    let weight: Double
    let volume: Double
    let customClearance: Bool
    let readyForShipment: Bool
}
