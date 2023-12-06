//
//  ApplicationViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 01.12.2023.
//

import UIKit

class ApplicationViewController: UIViewController {

    private lazy var imageView = UIImageView()
    private lazy var addAppButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        imageView.create(viewController: self)
        navigationItem.titleView = imageView
        addAppButton.createButton(viewController: self, action: #selector(addAppButtonTapped), title: "Новая заявка")
    }
    
    @objc func addAppButtonTapped() {
        let logisticViewController = LogisticViewController()
        navigationController?.pushViewController(logisticViewController, animated: true)
    }
}
