//
//  PasswordBuilder.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

final class AuthWithPasswordBuilder {
    static func build(_ coordinator: AuthWithPasswordCoordinator, _ phone: String) -> AuthWithPasswordViewController {
        let repsitory = AuthenticationRepository()
        let usecase = AuthWithPasswordUseCase(repsitory)
        let viewModel = AuthWithPasswordViewModel(usecase, coordinator)
        let vc = AuthWithPasswordViewController()
        vc.viewModel = viewModel
        return vc
    }
}

