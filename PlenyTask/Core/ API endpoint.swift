//
//   API endpoint.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import Foundation

struct Endpoint {
    let path: String
    let method: HTTPMethod
    let headers: [String: String]?
    let body: Data?
}

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}
