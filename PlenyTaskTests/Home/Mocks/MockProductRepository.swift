//
//  MockProductRepository.swift
//  PlenyTaskTests
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import XCTest
import Combine
@testable import PlenyTask

final class MockProductRepository: ProductRepository {
    func fetchProducts() -> AnyPublisher<ProductsPayload, Error> {
        // Simulate a successful response
        let productsPayload = ProductsPayload(posts: [
            Post(id: 1, title: "Title 1", body: "Body 1"),
            Post(id: 2, title: "Title 2", body: "Body 2")
        ])
        return Just(productsPayload)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
