//
//  ContactsManager.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 11.12.2023.
//

import UIKit

struct ContactsManager {
    
    static func buttonEventCall(number: String, viewController: UIViewController) {
        let alertController = UIAlertController(title: "Позвонить", message: "Вы уверены, что хотите позвонить по номеру: \(number)?", preferredStyle: .alert)
        let callAction = UIAlertAction(title: "Позвонить", style: .default) { _ in
            if let url = URL(string: number), UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            }
        }
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        alertController.addAction(callAction)
        alertController.addAction(cancelAction)
        viewController.present(alertController, animated: true)
    }
}
