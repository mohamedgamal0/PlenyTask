//
//  LoginUseCase.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import Foundation
import Combine

class LoginUseCase {
    func login(username: String, password: String) -> AnyPublisher<User, Error> {
        // Implement your login logic here.
        // You can add network requests, validation, or authentication checks.
        
        // For demonstration, let's assume a successful login for any input.
        let user = User(username: username, password: password)
        return Just(user)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
