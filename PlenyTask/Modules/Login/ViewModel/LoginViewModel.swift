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
    @Published var isPasswordVisible = false
    @Published var isLoggedIn = false
    @Published var errorMessage = ""
    
    private let loginUseCase: LoginUseCase
    
    init(loginUseCase: LoginUseCase) {
        self.loginUseCase = loginUseCase
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
                self?.isLoggedIn = true
            })
            .store(in: &cancellables)
    }
    
    func togglePasswordVisibility() {
        isPasswordVisible.toggle()
    }
    
    private var cancellables = Set<AnyCancellable>()
}
