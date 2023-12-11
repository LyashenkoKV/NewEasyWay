//
//  TransportFactory.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import Foundation

protocol TransportFactory {
    func createTransport(type: TransportType) -> TransportProtocol?
}

