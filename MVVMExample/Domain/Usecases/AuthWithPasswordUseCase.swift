//
//  LoginUseCase.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

protocol AuthWithPasswordUseCaseProtocol {
    func execute(request: AuthWithPasswordRequest,completion: @escaping (Result<AuthWithPasswordEntity?, AuthWithPasswordEntity.AuthWithPasswordError>) -> Void)
}

final class AuthWithPasswordUseCase: AuthWithPasswordUseCaseProtocol {
    
    private let authRepo: AuthenticationRepositoryProtocol
    
    init(_ authRepo: AuthenticationRepositoryProtocol) {
        print("AuthWithPasswordUseCase init")
        self.authRepo = authRepo
    }
    
    deinit {
        print("AuthWithPasswordUseCase deinit")
    }
    
    func execute(request: AuthWithPasswordRequest, completion: @escaping (Result<AuthWithPasswordEntity?, AuthWithPasswordEntity.AuthWithPasswordError>) -> Void) {
        return authRepo.loginWithPassword(request,
                                                 completion: { result in
            switch result {
            case .success(_):
                print("successful")
            case .failure(_):
                print("failed")
            }
            completion(result)
        })
    }
}

