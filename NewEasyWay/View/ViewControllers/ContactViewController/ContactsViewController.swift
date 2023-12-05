//
//  ContactViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

enum Cities: Int, CaseIterable {
    case Moscow, Krasnodar, Blagoveshchensk, Beijing, Shenzhen, Jinhua, Guangzhou, Heihe
}

final class ContactsViewController: UIViewController {
    lazy var tableView = UITableView()
    private lazy var callButton = UIButton()
    lazy var contactsModel = ContactsModel()
    private lazy var phoneNumber = "8 (800) 222-75-34"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Контакты"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
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
        let alertController = UIAlertController(title: "Позвонить", message: "Вы уверены, что хотите позвонить по номеру: \(phoneNumber)?", preferredStyle: .alert)
        let callAction = UIAlertAction(title: "Позвонить", style: .default) { _ in
            if let url = URL(string: self.phoneNumber), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            }
        }
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        alertController.addAction(callAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true)
    }
}

// MARK: - SwiftUI
import SwiftUI

struct ContactsAdapter: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return ContactsViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
struct ContactsProvider: PreviewProvider {
    static var previews: some View {
        ContactsAdapter()
    }
}
