//
//  SeaTransport.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

class SeaTransport: TransportProtocol {
    func calculateShippingCost(for request: ShippingRequest) -> Double {
        return 350.0
    }
}

