//
//  MultimodalTransport.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

final class MultimodalTransport: TransportProtocol {
    func calculateShippingCost(for request: ShippingRequest) -> Double {
        return 300.0
    }
}
