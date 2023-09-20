//
//  LoginViewModel.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import Foundation
import Combine

final class LoginViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
    @Published var isLoggedIn = false
    @Published var errorMessage = ""
    
    private let loginUseCase: LoginUseCase
    private let appCoordinator: AppCoordinator
    private var cancellables: Set<AnyCancellable> = []
    
    init(loginUseCase: LoginUseCase, appCoordinator: AppCoordinator) {
        self.loginUseCase = loginUseCase
        self.appCoordinator = appCoordinator
    }
    
    func login() {
        loginUseCase.login(username: username, password: password)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }, receiveValue: { [weak self] _ in
                self?.appCoordinator.login()
            })
            .store(in: &cancellables)
    }
}
