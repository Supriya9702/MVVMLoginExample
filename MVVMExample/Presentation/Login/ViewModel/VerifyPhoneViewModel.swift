//
//  VerifyPhoneViewModel.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

protocol VerifyPhoneViewModelProtocol{
    func verifyPhoneNumner(_ phoneNum: String)
    func startPasswordScreen(_ phoneNum: String)
}

final class VerifyPhoneViewModel: VerifyPhoneViewModelProtocol {
    
    private var coordinator: VerifyPhoneCoordinatorProtocol?
    private var verifyPhoneUsecase : VerifyPhoneNumberUseCaseProtocol?
    
    init(_ verifyPhoneUsecase: VerifyPhoneNumberUseCaseProtocol, _ coordinator: VerifyPhoneCoordinatorProtocol?) {
        self.coordinator = coordinator
        self.verifyPhoneUsecase = verifyPhoneUsecase
    }
   
    
    func verifyPhoneNumner(_ phoneNum: String) {
        let request = VerifyPhoneNumberRequest(query: VerifyPhoneNumberQuery(query: ""), input: VerifyPhoneNumberInput(phone: phoneNum))
        verifyPhoneUsecase?.execute(request: request, completion: { result in
            switch result {
            case .success(_):
                print("Login Successful")
            case .failure(_):
                print("Login failed")
            }
        })
    }
    
    func startPasswordScreen(_ phoneNum: String) {
        coordinator?.startPasswordScreen(phoneNum)
    }
}
