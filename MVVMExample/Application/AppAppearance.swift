//
//  AppAppearance.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import Foundation
import UIKit

final class AppAppearance {
    
    static func setupAppearance() {
        
    }
    
}

extension UINavigationController {
    @objc override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
