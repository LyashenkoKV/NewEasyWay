//
//  AppVCDataSource.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 08.12.2023.
//

import UIKit

extension RequestViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TransportType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.request.rawValue, for: indexPath) as? BaseCell ?? BaseCell()
        cell.backgroundColor = .systemGray5
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
