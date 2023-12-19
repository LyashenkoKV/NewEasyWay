//
//  TransportViewControllerDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import Foundation

protocol TransportDelegate: AnyObject {
    func didSelectTransport(_ transportType: TransportType, cellData: CellData)
}
