//
//  PlenyTaskApp.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import SwiftUI

@main
struct PlenyTaskApp: App {
    @StateObject private var appCoordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            appCoordinator.start()
        }
    }
}
