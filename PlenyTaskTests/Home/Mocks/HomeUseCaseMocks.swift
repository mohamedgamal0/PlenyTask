//
//  HomeUseCaseMocks.swift
//  PlenyTaskTests
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import XCTest
import Combine
@testable import PlenyTask

final class MockProductListUseCase: HomeUseCase {
    override func fetchProducts() -> AnyPublisher<[ProductUIModel], Error> {
            // Simulate a successful response with mock data
        let mockProducts = [ProductUIModel(id: 1, userName: "moh.gamal",
                                           date: "Now",
                                           description: "user_profile_img",
                                           profileImageName: "profile1", images: ["product",
                                                                                  "product2",
                                                                                  "product3"]),
                            ProductUIModel(id: 2,
                                           userName: "moh.ahmed",
                                           date: "2days ago",
                                           description: "Description2",
                                           profileImageName: "user_profile_img",
                                           images: ["product4"])]
            return Just(mockProducts)
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
        }
    }

