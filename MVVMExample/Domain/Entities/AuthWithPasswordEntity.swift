//
//  PasswordEntity.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

struct AuthWithPasswordEntity {
    
    let id: String
    let token: String
    
    enum AuthWithPasswordError: Error {
        case error(String)
        var message: String {
            switch self {
            case .error(let string):
                return string
            }
        }
    }
    
}
