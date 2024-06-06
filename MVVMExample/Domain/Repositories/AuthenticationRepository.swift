//
//  AuthenticationRepository.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

protocol AuthenticationRepositoryProtocol {
    
    func verifyPhoneNumber(_ request: VerifyPhoneNumberRequest, completion: @escaping (Result<VerifyPhoneNumberEntity?, VerifyPhoneNumberEntity.VerifyPhoneNumberError>) -> Void)
    
    func loginWithPassword(_ request: AuthWithPasswordRequest, completion: @escaping (Result<AuthWithPasswordEntity?, AuthWithPasswordEntity.AuthWithPasswordError>) -> Void)
}

final class AuthenticationRepository: AuthenticationRepositoryProtocol {
        
    func loginWithPassword(_ request: AuthWithPasswordRequest, completion: @escaping (Result<AuthWithPasswordEntity?, AuthWithPasswordEntity.AuthWithPasswordError>) -> Void) {
        
    }
    
    func verifyPhoneNumber(_ request: VerifyPhoneNumberRequest, completion: @escaping (Result<VerifyPhoneNumberEntity?, VerifyPhoneNumberEntity.VerifyPhoneNumberError>) -> Void) {
        
    }
}
