//
//  ParamViewCell.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 09.11.2023.
//

import UIKit

enum CellIdentifier: String {
    case base = "Cell"
    case question = "QuestCell"
    case transport = "TransportCell"
    case location = "LocationCell"
    case request = "ApplicationCell"
    case country = "CountryCell"
    case contacts = "ContactsCell"
}

class BaseCell: UITableViewCell {
    let horizontalStack: UIStackView = {
        let horizontalStack = UIStackView()
        horizontalStack.axis = .horizontal
        horizontalStack.alignment = .center
        horizontalStack.spacing = 20
        horizontalStack.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStack
    }()
    
    let cellImageView: UIImageView? = {
        let img = UIImageView()
        img.tintColor = .appGreen
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        return img
    }()
    
    let title: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 17, weight: .light)
        lbl.numberOfLines = 1
        return lbl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell() {
        if let cellImageView = cellImageView {
            horizontalStack.addArrangedSubview(cellImageView)
        }
        horizontalStack.addArrangedSubview(title)
        contentView.addSubview(horizontalStack)
        configureStackConstraints()
    }

    // MARK: - Constraints
    func configureStackConstraints() {
        var constraints: [NSLayoutConstraint] = [
            horizontalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            horizontalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            horizontalStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            horizontalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            horizontalStack.heightAnchor.constraint(equalToConstant: 50)
        ]
        if let cellImageView = cellImageView {
            constraints += [
                cellImageView.centerYAnchor.constraint(equalTo: horizontalStack.centerYAnchor),
                cellImageView.widthAnchor.constraint(equalToConstant: 30)
            ]
        }
        constraints += [
            title.centerYAnchor.constraint(equalTo: horizontalStack.centerYAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}

extension BaseCell: CellConfigurable {
    func configure(image: UIImage?, textTitle: String) {
        cellImageView?.image = image
        title.text = textTitle
    }
}
