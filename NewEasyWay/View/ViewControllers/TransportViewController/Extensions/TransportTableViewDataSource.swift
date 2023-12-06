//
//  TransportTableViewDataSource.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 30.11.2023.
//

import UIKit

extension TransportViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TransportType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.transport.rawValue, for: indexPath) as? BaseCell ?? BaseCell()
        cell.backgroundColor = .systemGray5
        
        guard let transportType = TransportType(rawValue: indexPath.row),
              let cellData = transportModel.cellData[transportType] else {
            return cell
        }
        
        cell.configure(image: cellData.image, textTitle: cellData.textTitle)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
