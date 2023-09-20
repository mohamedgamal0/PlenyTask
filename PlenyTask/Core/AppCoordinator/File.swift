//
//  File.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import SwiftUI

class AppCoordinator: ObservableObject {
    @Published var isLoggedIn = false

    init() {
        // Initialize the coordinator with any necessary setup
    }

    func start() {
        // You can add your initial view or navigation logic here
        isLoggedIn = false // Change to true if a user is already logged in
    }
}
