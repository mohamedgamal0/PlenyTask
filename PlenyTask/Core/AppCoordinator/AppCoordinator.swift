//
//  AppCoordinator.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import SwiftUI

final class AppCoordinator: ObservableObject {
    
    static let shared = AppCoordinator()
    @Published var isLoggedIn = AppStateManager.shared.isLoggedIn
    init() {}

    func start() -> some View {
        AppStateManager.shared.checkLoginState()
        if isLoggedIn {
            return AnyView(HomeView(viewModel: HomeViewModel(appCoordinator: self, productListUseCase: HomeUseCase(productRepository: ProductRepositoryImpl()))))
        } else {
            return AnyView(LoginView(viewModel: LoginViewModel(loginUseCase: LoginUseCase(), appCoordinator: self)))
        }
    }

    func login() {
        isLoggedIn = true
        AppStateManager.shared.updateLoginState(isLoggedIn: true)
    }

    func logout() {
        isLoggedIn = false
        AppStateManager.shared.updateLoginState(isLoggedIn: false)
    }
}
