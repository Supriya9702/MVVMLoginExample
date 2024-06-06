//
//  AuthWithPasswordViewModel.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

protocol AuthWithPasswordViewModelProtocol{
    func loginWithPassword(_ phoneNum: String, _ password: String)
}

final class AuthWithPasswordViewModel:AuthWithPasswordViewModelProtocol {
    
    private var coordinator: AuthWithPasswordCoordinatorProtocol?
    private var passwordUseCase : AuthWithPasswordUseCaseProtocol?
    
    init(_ passwordUseCase: AuthWithPasswordUseCaseProtocol, _ coordinator: AuthWithPasswordCoordinatorProtocol?) {
        self.coordinator = coordinator
        self.passwordUseCase = passwordUseCase
    }
   
    
    func loginWithPassword(_ phoneNum: String, _ password: String) {
        
    }
}
