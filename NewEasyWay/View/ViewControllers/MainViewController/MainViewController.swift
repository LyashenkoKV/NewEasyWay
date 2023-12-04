//
//  MainViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private lazy var authorizedButton = UIButton()
    private lazy var profileButton = ProfileButton(type: .system)
    private lazy var imageView = UIImageView()
    private lazy var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileButton.frame.size = CGSize(width: 40, height: 40)
        
        let profileBarButtonItem = UIBarButtonItem(customView: profileButton)
        navigationItem.rightBarButtonItem = profileBarButtonItem
        
        create(imageView: imageView)
        create(label: label)
        
        view.backgroundColor = .systemGray6
        authorizedButton.createButton(viewController: self, action: #selector(authorizedButtonTapped), title: "Авторизоваться")
    }
    
    private func create(imageView: UIImageView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .systemGray6
        imageView.image = UIImage(named: "logoPNG")
        
        view.addSubview(imageView)
       
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 204),
            imageView.heightAnchor.constraint(equalToConstant: 46),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150)
        ])
    }
    
    private func create(label: UILabel) {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray6
        label.text = "Свои люди в логистике"
        label.textColor = .systemGray
        label.font = UIFont(name: "Yeseva One", size: 30)
        label.numberOfLines = 2
        label.textAlignment = .center
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc func authorizedButtonTapped() {
        print("Authorized")
    }
}

import SwiftUI

struct QuestCellAdapter: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return MainViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
struct CellProvider: PreviewProvider {
    static var previews: some View {
        QuestCellAdapter()
    }
}
