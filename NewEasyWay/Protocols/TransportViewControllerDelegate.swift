//
//  TransportViewControllerDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import Foundation

protocol TransportViewControllerDelegate: AnyObject {
    func didSelectTransport(_ transportType: TransportType, cellData: CellData)
}
