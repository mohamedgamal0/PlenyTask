//
//  LoginUseCase.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//


import Foundation
import Combine

final class LoginUseCase {
    func login(username: String, password: String) -> AnyPublisher<User, Error> {
        let endpoint = LoginRequest(username: username, password: password)
        return NetworkManager.shared.performRequest(endpoint)
    }
}
