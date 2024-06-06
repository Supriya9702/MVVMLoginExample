//
//  VerifyPhoneNumberBuilder.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//


import Foundation

final class VerifyPhoneNumberBuilder {
    static func build(_ coordinator: VerifyPhoneCoordinator) -> VerifyPhoneViewController {
        let repsitory = AuthenticationRepository()
        let usecase = VerifyPhoneNumberUseCase(repsitory)
        let viewModel = VerifyPhoneViewModel(usecase, coordinator)
        let vc = VerifyPhoneViewController()
        vc.viewModel = viewModel
        return vc
    }
}
