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
               if appCoordinator.isLoggedIn {
                   // If the user is logged in, show the main content
                   HomeView()
                       .onAppear {
                           appCoordinator.start()
                       }
               } else {
                   // Otherwise, show the login screen
                   LoginView(viewModel: LoginViewModel(loginUseCase: LoginUseCase()))
               }
           }
       }
   }
