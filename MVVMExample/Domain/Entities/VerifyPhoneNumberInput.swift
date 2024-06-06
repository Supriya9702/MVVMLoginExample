//
//  VerifyPhoneNumberInput.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation

struct VerifyPhoneNumberQuery {
    let query: String
}

struct VerifyPhoneNumberRequest {
    let query: VerifyPhoneNumberQuery
    let input: VerifyPhoneNumberInput
}

struct VerifyPhoneNumberInput: Codable {
    let phone: String
}
