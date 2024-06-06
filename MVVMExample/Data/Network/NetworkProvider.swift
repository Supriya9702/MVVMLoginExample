//
//  NetworkProvider.swift
//  MVVMExample
//
//  Created by Supriya Gunda on 06/06/24.
//

import Foundation
import UIKit

protocol NetworkProvider {
    
}

public class Network: NetworkProvider {
    private let baseUrl: URL!

    public init(_ baseUrl: URL) {
        self.baseUrl = baseUrl
    }
}
