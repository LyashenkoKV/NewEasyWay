//
//  TransportProtocol.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

protocol TransportProtocol {
    func calculateShippingCost(for request: ShippingRequest) -> Double
}
