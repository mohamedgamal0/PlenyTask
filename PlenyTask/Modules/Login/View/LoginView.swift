//
//  LoginView.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                Image("welcome_login_img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 440)
                
                Spacer().frame(height: 24)

                Text("Welcome!")
                    .padding()
                    .font(PlenyUI.Theme.Typography.Title.bold.font)
                    .foregroundColor(PlenyUI.Theme.Color.Primary.x100.color)
                
                VStack(spacing: 24) {
                    StyledTextField(text: $viewModel.username, placeholder: "Username", label: "Username", isSecure: false)
                    StyledTextField(text: $viewModel.password, placeholder: "Password", label: "Password", isSecure: true)
                }
                                
                PrimaryButton(title: "Sign in") {
                    viewModel.login()
                    
                }
                .padding(.top, 40)
                
                // MARK: - Error message, if any
                if !viewModel.errorMessage.isEmpty {
                    Text("Error: \(viewModel.errorMessage)")
                        .foregroundColor(.red)
                        .padding()
                }
            }
        }
        .ignoresSafeArea()
    }
}
