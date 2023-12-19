//
//  ContactsManager.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 11.12.2023.
//

import UIKit

struct ContactsManager {
    
    private static func cleanPhoneNumber(_ phoneNumber: String) -> String {
        let allowedCharacterSet = CharacterSet(charactersIn: "0123456789")
        return phoneNumber.components(separatedBy: allowedCharacterSet.inverted).joined()
    }
    
    static func buttonEventCall(number: String, viewController: UIViewController) {
        let cleanedPhoneNumber = cleanPhoneNumber(number)
        let phoneNumberURL = URL(string: "tel://" + cleanedPhoneNumber)
        
        let alertController = UIAlertController(title: "Позвонить", message: "Вы уверены, что хотите позвонить по номеру: \(number)?", preferredStyle: .alert)
        let callAction = UIAlertAction(title: "Позвонить", style: .default) { _ in
            if let url = phoneNumberURL, UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
            }
        }
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel)
        alertController.addAction(callAction)
        alertController.addAction(cancelAction)
        viewController.present(alertController, animated: true)
    }
    
}
