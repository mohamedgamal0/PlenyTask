//
//  HomeUseCase.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import Foundation
import Combine

class HomeUseCase {
    private let productRepository: ProductRepository
    
    init(productRepository: ProductRepository) {
        self.productRepository = productRepository
    }
    
    func fetchProducts() -> AnyPublisher<[ProductUIModel], Error> {
        return productRepository.fetchProducts()
            .map { productsPayload in
                return productsPayload.posts.enumerated().map { (index, post) in
                    let images = self.determineImagesForIndex(index)
                    return ProductUIModel(
                        id: post.id,
                        userName: "Moh.Gamal",
                        date: "2 hours ago",
                        description: post.body,
                        profileImageName: "user_profile_img",
                        images: images
                    )
                }
            }
            .eraseToAnyPublisher()
    }
    
    private func determineImagesForIndex(_ index: Int) -> [String] {
         if index % 2 == 0 {
             return ["product", "product2", "product3"]
         } else {
             return ["product4"]
         }
     }
}
