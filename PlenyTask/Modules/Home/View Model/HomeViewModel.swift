//
//  HomeViewModel.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    @Published var products: [ProductUIModel] = []
    @Published var errorMessage = ""
    
    private let productListUseCase: HomeUseCase
    private let appCoordinator: AppCoordinator
    private var cancellables: Set<AnyCancellable> = []
    
    init(appCoordinator: AppCoordinator, productListUseCase: HomeUseCase) {
        self.appCoordinator = appCoordinator
        self.productListUseCase = productListUseCase
    }
    
    func fetchProducts() {
        productListUseCase.fetchProducts()
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                    print("Error fetching products: \(error)")
                }
            }, receiveValue: { [weak self] products in
                self?.products = products
            })
            .store(in: &cancellables)
    }
}
