//
//  HomeUseCaseTests.swift
//  PlenyTaskTests
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import XCTest
import Combine
@testable import PlenyTask

final class HomeUseCaseTests: XCTestCase {
    
    var homeUseCase: HomeUseCase!
    var cancellables: Set<AnyCancellable> = []
    
    override func setUp() {
        super.setUp()
        homeUseCase = HomeUseCase(productRepository: MockProductRepository())
    }
    
    override func tearDown() {
        homeUseCase = nil
        cancellables.removeAll()
        super.tearDown()
    }
    
    func test_Fetch_Products_Success() {
        let expectation = XCTestExpectation(description: "Fetch products should succeed")
        
        homeUseCase.fetchProducts()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    XCTFail("Fetch products failed with error: \(error)")
                }
                expectation.fulfill()
            }, receiveValue: { productUIModels in
                XCTAssertEqual(productUIModels.count, 2)
            })
            .store(in: &cancellables) // Store the cancellable in the set
            
        wait(for: [expectation], timeout: 5.0)
    }
}
