//
//  ProfileButton.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 04.12.2023.
//

import UIKit

final class ProfileButton: UIButton {
    
    var profileImage: UIImage? {
        didSet {
            updateProfileImage()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)
        updateProfileImage()
        self.tintColor = .systemGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func profileButtonTapped() {}
    
    private func updateProfileImage() {
        if let image = profileImage {
            setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
        } else {
            setImage(UIImage(systemName: "person.crop.circle")?.withRenderingMode(.alwaysOriginal), for: .normal)
        }
    }
}
