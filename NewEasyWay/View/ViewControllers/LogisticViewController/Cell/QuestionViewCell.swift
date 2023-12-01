//
//  QuestionViewCell.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 15.11.2023.
//

import UIKit

final class QuestionViewCell: BaseCell {
    private lazy var switchControl: UISwitch = {
        let switchControl = UISwitch()
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        return switchControl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupCell() {
        super.setupCell()
        horizontalStack.addArrangedSubview(switchControl)
    }
}

import SwiftUI

struct QuestCellAdapter: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return LogisticViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
struct CellProvider: PreviewProvider {
    static var previews: some View {
        ViewControllerAdapter()
    }
}
