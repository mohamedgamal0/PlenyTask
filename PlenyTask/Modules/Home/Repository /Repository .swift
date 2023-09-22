//
//  Repository .swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import Foundation
import Combine

protocol ProductRepository {
    func fetchProducts() -> AnyPublisher<ProductsPayload, Error>
}

class ProductRepositoryImpl: ProductRepository {
    func fetchProducts() -> AnyPublisher<ProductsPayload, Error> {
        let endpoint = ProductsRequest()
        return NetworkManager.shared.performRequest(endpoint)
    }
}
