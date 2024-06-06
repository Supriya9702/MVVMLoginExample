//
//  VerifyPhoneNumberUseCase.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

protocol VerifyPhoneNumberUseCaseProtocol {
    func execute(request: VerifyPhoneNumberRequest,completion: @escaping (Result<VerifyPhoneNumberEntity?, VerifyPhoneNumberEntity.VerifyPhoneNumberError>) -> Void)
}

final class VerifyPhoneNumberUseCase: VerifyPhoneNumberUseCaseProtocol {
    
    private let authRepo: AuthenticationRepositoryProtocol
    
    init(_ authRepo: AuthenticationRepositoryProtocol) {
        print("VerifyPhoneNumberUseCase init")
        self.authRepo = authRepo
    }
    
    deinit {
        print("VerifyPhoneNumberUseCase deinit")
    }
    
    func execute(request: VerifyPhoneNumberRequest,completion: @escaping (Result<VerifyPhoneNumberEntity?, VerifyPhoneNumberEntity.VerifyPhoneNumberError>) -> Void) {
        return authRepo.verifyPhoneNumber(request, completion: { result in
            if case .success = result {
                
            }
            completion(result)
        })
    }
    
}

