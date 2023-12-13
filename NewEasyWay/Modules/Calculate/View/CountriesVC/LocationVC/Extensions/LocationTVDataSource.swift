//
//  LocationViewControllerDataSource.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 06.12.2023.
//

import UIKit

extension LocationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectedLocations?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.location.rawValue, for: indexPath) as? BaseCell ?? BaseCell()
        cell.backgroundColor = .systemGray5
        
        let location = selectedLocations?[indexPath.row]
        cell.configure(image: UIImage(systemName: "globe.central.south.asia"), textTitle: location ?? "")
        
        return cell
    }
}
