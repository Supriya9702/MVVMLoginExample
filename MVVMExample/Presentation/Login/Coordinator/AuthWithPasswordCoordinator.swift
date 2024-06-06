//
//  PasswordCoordinator.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import UIKit

protocol AuthWithPasswordCoordinatorProtocol {
    
}

final class AuthWithPasswordCoordinator: AuthWithPasswordCoordinatorProtocol {

    let networkProvider: NetworkProvider
    var navigationController: UINavigationController?

    init(_ networkProvider: NetworkProvider, _ navigation: UINavigationController? = nil) {
        print("AuthWithPasswordCoordinator init")
        self.networkProvider = networkProvider
        self.navigationController = navigation
    }

    deinit {
        print("AuthWithPasswordCoordinator deinit")
    }
}
