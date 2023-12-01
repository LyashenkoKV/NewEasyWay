//
//  AirTransport.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

class AirTransport: TransportProtocol {
    func calculateShippingCost(for request: ShippingRequest) -> Double {
        return 200.0
    }
}
