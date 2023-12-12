//
//  ContactViewCell.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 04.12.2023.
//

import UIKit

final class ContactViewCell: BaseCell {
    override func setupCell() {
        contentView.addSubview(title)
        configureStackConstraints()
    }
}


