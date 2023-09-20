//
//  HomeView.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        VStack {
            Text("Welcome to the Content View")
            PrimaryButton(title: "Log Out") {
                AppCoordinator.shared.logout()
            }
        }
    }
}
