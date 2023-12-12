//
//  String.swift
//  NewEasyWay
//
//  Created by Konstantin Lyashenko on 12.12.2023.
//

import UIKit

extension String {
    func image() -> UIImage? {
        let size = CGSize(width: 20, height: 20)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.clear.set()
        let rect = CGRect(origin: .zero, size: size)
        UIRectFill(rect)
        
        (self as NSString).draw(in: rect, withAttributes: [.font: UIFont.systemFont(ofSize: 16)])
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
