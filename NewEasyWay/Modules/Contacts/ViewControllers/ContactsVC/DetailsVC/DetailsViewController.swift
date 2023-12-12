//
//  ContactsDetailsViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 05.12.2023.
//

import UIKit

final class DetailsViewController: UIViewController {
    
    var detailsModel: DetailsModel?
    private let imageView = UIImageView()
    
    private let officeTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Yeseva One", size: 20)
        label.backgroundColor = .systemGray6
        label.textAlignment = .center
        return label
    }()
    
    private let officeTextView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.textColor = .systemGray
        return textView
    }()
    
    private let warehouseTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Yeseva One", size: 20)
        label.backgroundColor = .systemGray6
        label.textAlignment = .center
        return label
    }()
    
    private let warehouseTextView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.textColor = .systemGray
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        imageView.create(viewController: self)
        navigationItem.titleView = imageView
        setupUI()
        configureData()
    }
    
    private func setupUI() {
        let stackView = UIStackView(arrangedSubviews: [officeTitleLabel, officeTextView, warehouseTitleLabel, warehouseTextView])
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
        NSLayoutConstraint.activate([
            officeTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            officeTextView.heightAnchor.constraint(equalToConstant: 150),
            warehouseTitleLabel.heightAnchor.constraint(equalToConstant: 50),
            warehouseTextView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    private func configureData() {
        officeTitleLabel.text = "ОФИС"
        officeTextView.text = "Office Address: \(detailsModel?.officeAddress ?? "N/A")"
        warehouseTitleLabel.text = "СКЛАД"
        warehouseTextView.text = "Warehouse Address: \(detailsModel?.warehouseAddress ?? "N/A")"
    }
}

