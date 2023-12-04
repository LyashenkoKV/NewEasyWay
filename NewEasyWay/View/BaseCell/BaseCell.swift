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
    case application = "ApplicationCell"
    case contacts = "ContactsCell"
}

class BaseCell: UITableViewCell {
    lazy var horizontalStack: UIStackView = {
        let horizontalStack = UIStackView()
        horizontalStack.axis = .horizontal
        horizontalStack.alignment = .center
        horizontalStack.translatesAutoresizingMaskIntoConstraints = false
        return horizontalStack
    }()
    
    lazy var cellImageView: UIImageView = {
        let img = UIImageView()
        img.tintColor = .appGreen
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        return img
    }()
    
    lazy var title: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.systemFont(ofSize: 15, weight: .light)
        lbl.numberOfLines = 1
        lbl.textAlignment = .left
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
        horizontalStack.addArrangedSubview(cellImageView)
        horizontalStack.addArrangedSubview(title)
        contentView.addSubview(horizontalStack)
        configureStackConstraints()
    }

    // MARK: - Constraints
    private func configureStackConstraints() {
        NSLayoutConstraint.activate([
            horizontalStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            horizontalStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            horizontalStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            horizontalStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            
            cellImageView.centerYAnchor.constraint(equalTo: horizontalStack.centerYAnchor),
            title.centerYAnchor.constraint(equalTo: horizontalStack.centerYAnchor),
            title.leftAnchor.constraint(equalTo: cellImageView.rightAnchor, constant: 20),
            
            cellImageView.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
}

extension BaseCell: CellConfigurable {
    func configure(image: UIImage, textTitle: String) {
        cellImageView.image = image
        title.text = textTitle
    }
}
