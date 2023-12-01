//
//  LogisticCalculateButtonManager.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 22.11.2023.
//

import UIKit

extension LogisticViewController {
    func createButton(calculateButton: UIButton) {
        calculateButton.setTitle("Рассчитать", for: .normal)
        calculateButton.backgroundColor = .appPurple
        calculateButton.layer.cornerRadius = 10
        calculateButton.setTitleColor(.white, for: .normal)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        
        view.addSubview(calculateButton)
        
        NSLayoutConstraint.activate([
            calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            calculateButton.heightAnchor.constraint(equalToConstant: 40),
            calculateButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    @objc private func calculateButtonTapped() {}
}
