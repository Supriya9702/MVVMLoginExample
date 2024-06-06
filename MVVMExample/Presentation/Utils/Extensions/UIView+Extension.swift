//
//  UIButtonExtension.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import UIKit

extension UIView {
    
    func setRadius(_ radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
    
    func setBorder(color: UIColor, width: Double = 1.0) {
        self.layer.borderWidth = CGFloat(width)
        self.layer.borderColor = color.cgColor
    }
    
}
