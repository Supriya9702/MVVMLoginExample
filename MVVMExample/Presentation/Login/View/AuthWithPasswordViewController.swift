//
//  PasswordViewController.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import UIKit

class AuthWithPasswordViewController: UIViewController {
    
    var viewModel: AuthWithPasswordViewModel?
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = LocalizedStringKeys.AuthWithPassword.welcomeBack
        label.font = UIFont.MVVMExample.semiBold24
        label.textColor = UIColor.MVVMExample.black150546
        return label
    }()
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = LocalizedStringKeys.AuthWithPassword.loginText
        label.font = UIFont.MVVMExample.regular20
        label.numberOfLines = 0
        label.textColor = UIColor.MVVMExample.black000000
        return label
    }()
    
    private lazy var passwordInputField: UITextField = {
        let tField = UITextField()
        tField.setLeftPadding(15)
        tField.font = UIFont.MVVMExample.regular14
        tField.placeholder = LocalizedStringKeys.AuthWithPassword.enterPassword
        tField.borderStyle = UITextField.BorderStyle.none
        tField.returnKeyType = UIReturnKeyType.done
        tField.textColor = UIColor.MVVMExample.black000000Alpha50
        tField.backgroundColor = UIColor.MVVMExample.greyF4F4F4
        tField.autocapitalizationType = .none
        tField.setRadius(5)
        return tField
    }()
    
    private lazy var loginButton: PrimaryButton = {
        let button = PrimaryButton()
        button.setTitle(LocalizedStringKeys.AuthWithPassword.loginButtonText, for: .normal)
        button.setRadius(20)
        return button
    }()
    
    private lazy var loginWithOTPButton: SecondaryButton = {
        let button = SecondaryButton()
        button.setTitle(LocalizedStringKeys.AuthWithPassword.loginWithOTPButtonText, for: .normal)
        button.setRadius(20)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(welcomeLabel)
        view.addSubview(loginLabel)
        view.addSubview(welcomeLabel)
        view.addSubview(passwordInputField)
        view.addSubview(loginButton)
        view.addSubview(loginWithOTPButton)
        setConstraints()
    }
    
    private func setConstraints() {
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top).offset(134)
            make.leading.equalTo(40)
            make.trailing.equalTo(-40)
            make.height.equalTo(31)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom).offset(10)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(-40)
            make.height.greaterThanOrEqualTo(52)
        }
        
        passwordInputField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(50)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(loginLabel.snp.trailing)
            make.height.equalTo(50)
        }
        
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordInputField.snp.bottom).offset(50)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(loginLabel.snp.trailing)
            make.height.equalTo(55)
        }
        
        loginWithOTPButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(20)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(loginLabel.snp.trailing)
            make.height.equalTo(55)
        }
    }
}
