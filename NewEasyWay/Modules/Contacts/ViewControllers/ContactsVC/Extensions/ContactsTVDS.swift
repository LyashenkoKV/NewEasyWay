//
//  ContactsDataSource.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 04.12.2023.
//

import UIKit

extension ContactsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Cities.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.contacts.rawValue, for: indexPath) as? BaseCell ?? BaseCell()
        cell.backgroundColor = .systemGray5
        cell.accessoryType = .disclosureIndicator
        
        guard let cities = Cities(rawValue: indexPath.row),
              let cellData = contactsModel.cellData[cities] else {
            return cell
        }
        cell.configure(image: cellData.image, textTitle: cellData.textTitle, tintColor: .appGreen)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "FooterViewIdentifier") as? ContactsFooterView
        footerView?.delegate = self
        return footerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }
}
