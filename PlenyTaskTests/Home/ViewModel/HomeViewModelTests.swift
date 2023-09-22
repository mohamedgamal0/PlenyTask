//
//  HomeViewModelTests.swift
//  PlenyTaskTests
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import XCTest
import Combine
@testable import PlenyTask

final class HomeViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = HomeViewModel(appCoordinator: AppCoordinator(), productListUseCase: MockProductListUseCase(productRepository: MockProductRepository()))
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func test_Fetch_Products_Success() {
        let expectation = XCTestExpectation(description: "Fetch products should succeed")
        
        viewModel.fetchProducts()
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) { // Simulate asynchronous response
            XCTAssertEqual(self.viewModel.products.count, 2)
            XCTAssert(self.viewModel.errorMessage.isEmpty, "Expected no error message")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)
    }
    
    func test_Fetch_Products_Failure() {
        let expectation = XCTestExpectation(description: "Fetch products should fail")
        
        class MockErrorProductListUseCase: HomeUseCase {
            override func fetchProducts() -> AnyPublisher<[ProductUIModel], Error> {
                // Simulate a failure response with an error message
                let error = NSError(domain: "TestErrorDomain", code: 123, userInfo: [NSLocalizedDescriptionKey: "Test Error"])
                return Fail(error: error)
                    .eraseToAnyPublisher()
            }
        }
        
        viewModel = HomeViewModel(appCoordinator: AppCoordinator(), productListUseCase: MockErrorProductListUseCase(productRepository: MockProductRepository()))
        
        viewModel.fetchProducts()
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) { // Simulate asynchronous response
            XCTAssertEqual(self.viewModel.products.count, 0)
            XCTAssertFalse(self.viewModel.errorMessage.isEmpty, "Expected an error message")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 2.0)
    }
}
