//
//  CalculatorViewModel.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

final class CalculatorViewModel {
    private(set) var selectedTransportType: TransportType?
    private(set) var shippingRequest: ShippingRequest?
    private(set) var selectLocation: String?
    private(set) var transportFactory: TransportFactory?
    
    init(transportFactory: TransportFactory = ConcreteTransportFactory()) {
        self.transportFactory = transportFactory
    }
    
    func calculateShippingCost() -> Double? {
        guard let selectedTransportType = selectedTransportType,
              let request = shippingRequest,
              let transport = transportFactory?.createTransport(type: selectedTransportType) else {
            return nil
        }
        return transport.calculateShippingCost(for: request)
    }
    
    func updateSelectLocation(_ location: String) {
        selectLocation = location
    }
}
