//
//  SnapkitExtension.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import Foundation
import UIKit
import SnapKit

extension UIView {

    var safeArea: ConstraintBasicAttributesDSL {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        } else {
            return self.snp
        }
    }

    var safeAreaEdgesInset: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return self.safeAreaInsets
        } else {
            return UIEdgeInsets()
        }
    }
    
}

