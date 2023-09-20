//
//  LoginRequest.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import Foundation

final class LoginRequest: EndpointProtocol {
    var path: String { "/auth/login" }
    var method: HTTPMethod { .post }
    var headers: [String: String]? { ["Content-Type": "application/json"] }
    
    let username: String
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    var body: Data? {
        try? JSONEncoder().encode(["username": username, "password": password])
    }
}
