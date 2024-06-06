//
//  VerifyPhoneNumberEntity.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

struct VerifyPhoneNumberEntity {
    let isExistingUser: Bool
    
    enum VerifyPhoneNumberError: Error {
        case error(String)
        var message: String {
            switch self {
            case .error(let string):
                return string
            }
        }
    }
}
