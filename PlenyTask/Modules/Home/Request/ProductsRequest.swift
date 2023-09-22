//
//  ProductsRequest.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import Foundation
final class ProductsRequest: EndpointProtocol {
    var path: String { "/posts" }
    var method: HTTPMethod { .get }
    var headers: [String: String]? { nil }
    var body: Data? { nil }
}

