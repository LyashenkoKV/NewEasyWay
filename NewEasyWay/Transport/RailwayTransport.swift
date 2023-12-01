//
//  RailwayTransport.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

class RailwayTransport: TransportProtocol {
    func calculateShippingCost(for request: ShippingRequest) -> Double {
        return 250.0
    }
}
