//
//  LocationDelegate.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 18.12.2023.
//

import UIKit

extension CalculateViewController: LocationDelegate {
    
    func didSelectLocation(location: String) {
        
        guard var destinationSection = calculateModel?.sectionData[.destination] else {
            return
        }
        
        if let selectedIndexPath = selectedIndexPath,
           selectedIndexPath.row < destinationSection.data.count {
            destinationSection.data[selectedIndexPath.row] = CellData(image: UIImage(systemName: "mappin.and.ellipse"), textTitle: location)
            calculateModel?.sectionData[.destination] = destinationSection
        } else {
            print("Not working")
        }
        selectedIndexPath = nil
        tableView.reloadData()
    }
}
