//
//  AppStateManager.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import Foundation

import Foundation

final class AppStateManager {
    static let shared = AppStateManager()
    
    private let userDefaults = UserDefaults.standard
    private let isLoggedInKey = "IsLoggedIn"
    
    var isLoggedIn: Bool {
        get {
            return userDefaults.bool(forKey: isLoggedInKey)
        }
        set {
            userDefaults.set(newValue, forKey: isLoggedInKey)
        }
    }
    
    private init() {}
    
    func checkLoginState() {
        if isLoggedIn {
            AppCoordinator.shared.isLoggedIn = true
        }
    }
    
    func updateLoginState(isLoggedIn: Bool) {
        self.isLoggedIn = isLoggedIn
    }
}
