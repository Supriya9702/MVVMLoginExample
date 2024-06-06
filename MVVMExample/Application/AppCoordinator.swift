//
//  AppCoordinator.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import UIKit

final class AppCoordinator {

    let networkProvider: NetworkProvider
    var navigationController: UINavigationController?

    init(_ networkProvider: NetworkProvider, _ navigation: UINavigationController? = nil) {
        print("AppCoordinator init")
        self.networkProvider = networkProvider
        self.navigationController = navigation
    }

    
    deinit {
        print("AppCoordinator deinit")
    }

    func startLogin() {
        let coordinator = VerifyPhoneCoordinator(networkProvider, navigationController)
        let viewController = VerifyPhoneNumberBuilder.build(coordinator)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func startHome() {
        
    }
}
