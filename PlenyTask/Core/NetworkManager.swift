//
//  NetworkManager.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import Foundation
import Combine

final class NetworkManager {
    static let shared = NetworkManager()
    private let baseUrl = "https://dummyjson.com"

    private init() {}

    func performRequest<T: Codable>(_ endpoint: EndpointProtocol) -> AnyPublisher<T, Error> {
        guard let url = URL(string: baseUrl + endpoint.path) else {
            return Fail(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }

        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.headers
        request.httpBody = endpoint.body

        return URLSession.shared.dataTaskPublisher(for: request)
               .map(\.data)
               .decode(type: T.self, decoder: JSONDecoder())
               .receive(on: DispatchQueue.main)
               .eraseToAnyPublisher()
       }
    
}
