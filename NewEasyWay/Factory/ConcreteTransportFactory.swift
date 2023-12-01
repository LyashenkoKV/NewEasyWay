//
//  ConcreteTransportFactory.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

final class ConcreteTransportFactory: TransportFactory {
    func createTransport(type: TransportType) -> TransportProtocol? {
        switch type {
        case .auto:
            return AutoTransport()
        case .air:
            return AirTransport()
        case .railway:
            return RailwayTransport()
        case .sea:
            return SeaTransport()
        case .multimodal:
            return MultimodalTransport()
        }
    }
}
