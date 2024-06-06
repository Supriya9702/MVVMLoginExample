//
//  PrimaryButton.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import UIKit

class PrimaryButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    fileprivate func setupButton() {
        backgroundColor = UIColor.MVVMExample.redEF4B4B
        self.titleLabel?.font = UIFont.MVVMExample.medium16
        setTitleColor(.white, for: .normal)
    }
}
