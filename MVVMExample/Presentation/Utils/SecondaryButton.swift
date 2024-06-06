//
//  SecondaryButton.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import UIKit

class SecondaryButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    fileprivate func setupButton() {
        backgroundColor = UIColor.MVVMExample.greyF4F4F4
        self.titleLabel?.font = UIFont.MVVMExample.medium16
        setTitleColor(UIColor.MVVMExample.redEF4B4B, for: .normal)
    }
}

