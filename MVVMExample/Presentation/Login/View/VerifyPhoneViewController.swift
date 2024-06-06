//
//  VerifyPhoneViewController.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 05/06/24.
//

import UIKit
import SnapKit

class VerifyPhoneViewController: UIViewController {
    
    var viewModel: VerifyPhoneViewModelProtocol? {
        didSet {
            subscribeToLoginData()
        }
    }
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = LocalizedStringKeys.VerifyPhone.welcomeBack
        label.font = UIFont.MVVMExample.semiBold24
        label.textColor = UIColor.MVVMExample.black150546
        return label
    }()
    
    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = LocalizedStringKeys.VerifyPhone.loginText
        label.font = UIFont.MVVMExample.regular20
        label.textColor = UIColor.MVVMExample.black000000
        return label
    }()
    
    private lazy var phoneInputField: UITextField = {
        let tField = UITextField()
        tField.font = UIFont.MVVMExample.regular14
        tField.text = LocalizedStringKeys.VerifyPhone.enterPhone
        tField.borderStyle = UITextField.BorderStyle.none
        tField.keyboardType = .phonePad
        tField.returnKeyType = UIReturnKeyType.done
        tField.textColor = UIColor.MVVMExample.black000000Alpha50
        tField.backgroundColor = UIColor.MVVMExample.greyF4F4F4
        tField.autocapitalizationType = .none
        tField.setRadius(5)
        return tField
    }()
    
    private lazy var countryCodeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 10,y: 0,width: 40,height: 48))
        label.text = LocalizedStringKeys.VerifyPhone.countryCode
        label.font = UIFont.MVVMExample.regular14
        label.textColor = UIColor.MVVMExample.black000000Alpha50
        return label
    }()
    
    
    private lazy var leftView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 50))
        view.addSubview(countryCodeLabel)
        return view
    }()
    
    private lazy var sendOTPButton: PrimaryButton = {
        let button = PrimaryButton()
        button.setTitle(LocalizedStringKeys.VerifyPhone.sendOTPButtonText, for: .normal)
        button.setRadius(20)
        return button
    }()
    
    private lazy var loginWithPasswordButton: SecondaryButton = {
        let button = SecondaryButton()
        button.setTitle(LocalizedStringKeys.VerifyPhone.loginUsingPasswordButtonText, for: .normal)
        button.addTarget(self, action: #selector(loginWithPasswordBtnAction), for: .touchUpInside)
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
        view.addSubview(phoneInputField)
        view.addSubview(sendOTPButton)
        view.addSubview(loginWithPasswordButton)
        phoneInputField.leftView = leftView
        phoneInputField.leftViewMode = .always
        setConstraints()
        
    }
    
    @objc func loginWithPasswordBtnAction() {
        guard let phone = phoneInputField.text, !phone.isEmpty else { return }
        viewModel?.startPasswordScreen(phone)
    }
    
    private func setConstraints() {
        welcomeLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top).offset(134)
            make.leading.equalTo(40)
            make.trailing.equalTo(-40)
            make.height.equalTo(31)
        }
        
        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomeLabel.snp.bottom)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(-40)
            make.height.equalTo(52)
        }
        
        phoneInputField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(50)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(loginLabel.snp.trailing)
            make.height.equalTo(50)
        }
        
        sendOTPButton.snp.makeConstraints { make in
            make.top.equalTo(phoneInputField.snp.bottom).offset(50)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(loginLabel.snp.trailing)
            make.height.equalTo(55)
        }
        
        loginWithPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(sendOTPButton.snp.bottom).offset(20)
            make.leading.equalTo(welcomeLabel.snp.leading)
            make.trailing.equalTo(loginLabel.snp.trailing)
            make.height.equalTo(55)
        }
    }
}

extension VerifyPhoneViewController {
    func subscribeToLoginData() {
        //subscribeToDataLoaded from API, which is observed on viewModel
    }
}
