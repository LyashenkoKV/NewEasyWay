//
//  ContactsFooterView.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 05.12.2023.
//

import UIKit

class ContactsFooterView: UITableViewHeaderFooterView {
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
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(emailLabelTapped))
//        emailLabel.addGestureRecognizer(tapGesture)
    }
    
    private func setupUI() {
        addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
//    @objc private func emailLabelTapped() {
//        guard let email = emailLabel.text else { return }
//        
//        UIPasteboard.general.string = email
//        
//        let alert = UIAlertController(title: "Скопировано", message: "Адрес электронной почты скопирован в буфер обмена", preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "OK", style: .default))
//        present(alert, animated: true)
//    }
}
