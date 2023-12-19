//
//  MainViewController.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.11.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let authorizedButton = UIButton()
    private let imageView = UIImageView()
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    private lazy var profileButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        tabBarController?.tabBar.tintColor = .appGreen
        
        imageView.create(viewController: self)
        create(titleLabel: titleLabel)
        create(subtitleLabel: subtitleLabel)
        createProfile(barButtonItem: profileButton)
        authorizedButton.createButton(viewController: self, action: #selector(authorizedButtonTapped), title: "Авторизоваться")
    }
    
    private func createProfile(barButtonItem: UIBarButtonItem) {
        let profileButton = ProfileButton(type: .system)
        var profileBarButtonItem = barButtonItem
        profileButton.frame.size = CGSize(width: 40, height: 40)
        profileBarButtonItem = UIBarButtonItem(customView: profileButton)
        navigationItem.rightBarButtonItem = profileBarButtonItem
        navigationItem.titleView = imageView
    }
    
    private func create(titleLabel: UILabel) {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.backgroundColor = .systemGray6
        titleLabel.text = "Свои люди в логистике"
        titleLabel.textColor = .systemGray
        titleLabel.font = UIFont(name: "Yeseva One", size: 30)
        titleLabel.numberOfLines = 2
        titleLabel.textAlignment = .center
        
        view.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            titleLabel.widthAnchor.constraint(equalToConstant: 300),
            titleLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func create(subtitleLabel: UILabel) {
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.backgroundColor = .systemGray6
        subtitleLabel.text = "Доставка из Китая и Турции"
        subtitleLabel.textColor = .systemGray4
        subtitleLabel.numberOfLines = 2
        subtitleLabel.textAlignment = .center
        
        view.addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            subtitleLabel.widthAnchor.constraint(equalToConstant: 300),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 50),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60)
        ])
    }
    
    @objc private func authorizedButtonTapped() {
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
