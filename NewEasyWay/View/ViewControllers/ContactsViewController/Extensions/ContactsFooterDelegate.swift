//
//  ContactsFooterDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 05.12.2023.
//

import UIKit

extension ContactsViewController: ContactsFooterDelegate {
    func emailLabelTapped(_ footer: ContactsFooterView) {
        guard let email = footer.emailLabel.text else { return }
        
        UIPasteboard.general.string = email
        
        let alert = UIAlertController(title: "Скопировано", message: "Адрес электронной почты скопирован в буфер обмена", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

