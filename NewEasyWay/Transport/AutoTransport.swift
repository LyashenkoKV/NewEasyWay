//
//  AutoTransport.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

class AutoTransport: TransportProtocol {
    func calculateShippingCost(for request: ShippingRequest) -> Double {
        return 100.0
    }
}
