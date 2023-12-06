//
//  ContactsFooterView.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 05.12.2023.
//

import UIKit

protocol ContactsFooterDelegate: AnyObject {
    func emailLabelTapped(_ footer: ContactsFooterView)
}

final class ContactsFooterView: UITableViewHeaderFooterView {
    
    weak var delegate: ContactsFooterDelegate?
    
    private lazy var imageView: UIImageView = {
        let img = UIImageView()
        img.tintColor = .appGreen
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(systemName: "envelope")
        img.clipsToBounds = true
        return img
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.text = "office@new-easy-way.ru"
        label.isUserInteractionEnabled = true
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(emailLabelTapped))
        emailLabel.addGestureRecognizer(tapGesture)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        addSubview(emailLabel)
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor,constant: 20),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    @objc private func emailLabelTapped(_ sender: UITapGestureRecognizer) {
        delegate?.emailLabelTapped(self)
    }
}
