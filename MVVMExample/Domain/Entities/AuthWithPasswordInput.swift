//
//  LoginInput.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

struct AuthWithPasswordQuery {
    let query: String
}

struct AuthWithPasswordRequest {
    let query: AuthWithPasswordQuery
    let input: AuthWithPasswordInput
}

struct AuthWithPasswordInput: Codable {
    let phone: String
    let password: String
}
