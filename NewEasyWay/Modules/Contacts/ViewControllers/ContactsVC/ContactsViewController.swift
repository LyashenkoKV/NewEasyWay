//
//  ContactViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

final class ContactsViewController: BaseViewController {
    
    let detailsContactsModel = DetailsContactsModel()
    let contactsModel = ContactsModel()
    private let callButton = UIButton()
    private let phoneNumber = "8 (800) 222-75-34"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Контакты"
        navigationController?.navigationBar.prefersLargeTitles = true
        settings(tableView: tableView)
        callButton.createButton(viewController: self, action: #selector(buttonTapped), title: "Позвонить: \(phoneNumber)")
    }
    
    private func settings(tableView: UITableView) {
        tableView.createTableView(viewController: self, withFooter: true)
        tableView.tableFooterView?.layoutIfNeeded()
        tableView.register(BaseCell.self, forCellReuseIdentifier: CellIdentifier.contacts.rawValue)
        tableView.register(ContactsFooterView.self, forHeaderFooterViewReuseIdentifier: "FooterViewIdentifier")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc private func buttonTapped() {
        ContactsManager.buttonEventCall(number: phoneNumber, viewController: self)
    }
}
