//
//  CellConfigurable.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 16.11.2023.
//

import UIKit

protocol CellConfigurable {
    var cellImageView: UIImageView? { get }
    var title: UILabel { get }
    func configure(image: UIImage?, textTitle: String, tintColor: UIColor)
}
