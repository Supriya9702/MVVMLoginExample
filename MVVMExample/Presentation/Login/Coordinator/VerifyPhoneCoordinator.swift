//
//  VerifyPhoneCoordinator.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import UIKit

protocol VerifyPhoneCoordinatorProtocol {
    func startPasswordScreen(_ phone: String)
}

final class VerifyPhoneCoordinator: VerifyPhoneCoordinatorProtocol {

    let networkProvider: NetworkProvider
    var navigationController: UINavigationController?

    init(_ networkProvider: NetworkProvider, _ navigation: UINavigationController? = nil) {
        print("VerifyPhoneCoordinator init")
        self.networkProvider = networkProvider
        self.navigationController = navigation
    }

    deinit {
        print("VerifyPhoneCoordinator deinit")
    }

    func startPasswordScreen(_ phone: String) {
        let passwordCoordinator = AuthWithPasswordCoordinator(networkProvider, navigationController)
        let passwordVC = AuthWithPasswordBuilder.build(passwordCoordinator, phone)
        navigationController?.pushViewController(passwordVC, animated: true)
    }
    
}
