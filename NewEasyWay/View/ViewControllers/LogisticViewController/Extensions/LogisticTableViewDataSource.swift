//
//  LogisticCalcVCDataSourse.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 16.11.2023.
//

import UIKit

// MARK: - UICollectionViewDataSource
extension LogisticViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SectionKind.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sectionKind = SectionKind(rawValue: section),
              let sectionData = logisticModel.sectionData[sectionKind] else {
            return 0
        }
        return sectionData.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let section = SectionKind(rawValue: indexPath.section),
              let sectionData = logisticModel.sectionData[section] else {
            return UITableViewCell()
        }
        
        func useBaseCell() -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.base.rawValue, for: indexPath) as? BaseCell ?? BaseCell()
            cell.backgroundColor = .systemGray5
            cell.accessoryType = .disclosureIndicator
            let cellData = sectionData.data[indexPath.row]
            cell.configure(image: cellData.image, textTitle: cellData.textTitle)
            return cell
        }
        func useQuestionCell() -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.question.rawValue, for: indexPath) as? QuestionViewCell ?? QuestionViewCell()
            cell.backgroundColor = .systemGray5
            let cellData = sectionData.data[indexPath.row]
            cell.configure(image: cellData.image, textTitle: cellData.textTitle)
            return cell
        }
        
        switch section {
        case .kindOfDelivery, .destination, .shipmentParam:
            return useBaseCell()
        case .shipmentQuest:
            return useQuestionCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
