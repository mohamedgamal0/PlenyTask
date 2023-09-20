//
//   API endpoint.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import Foundation

protocol EndpointProtocol {
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: [String: String]? { get }
    var body: Data? { get }
} 

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}
