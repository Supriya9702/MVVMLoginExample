//
//  UItextField+Extension.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation
import UIKit

extension UITextField {
    func setLeftPadding(_ points: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: points, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
