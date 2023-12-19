//
//  LocationDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 18.12.2023.
//

import UIKit

protocol LocationDelegate: AnyObject {
    func didSelectLocation(location: String)
}
