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
            VStack {
                
                Image("welcome_login_img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 440)
                
                Spacer().frame(height: 24)

                Text("Welcome!")
                    .padding()
                    .font(DesignSystem.Fonts.title3)
                    .foregroundColor(DesignSystem.Colors.primary)
                
                Spacer().frame(height: 24)
                
                VStack(alignment: .leading) {
                    Text("Username")
                        .font(DesignSystem.Fonts.subHeadLine)
                        .padding(.leading)
                        .foregroundColor(DesignSystem.Colors.grey)

                    TextField("Enter your username", text: $viewModel.username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                }
                    
                Spacer().frame(height: 24)

                // Password text field with show/hide button
                VStack(alignment: .leading) {
                    Text("Password")
                        .font(DesignSystem.Fonts.subHeadLine)
                        .foregroundColor(DesignSystem.Colors.grey)
                        .padding(.leading)
                    HStack {
                        SecureField("Enter your password", text: $viewModel.password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)
                        Button(action: {
                            // Toggle password visibility
                            viewModel.togglePasswordVisibility()
                        }) {
                            Image(systemName: viewModel.isPasswordVisible ? "eye" : "eye.slash")
                        }
                    }
                }
                .padding(.vertical)
                
                // Login button
                Button(action: {
                    viewModel.login()
                }) {
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                
                // Error message, if any
                if !viewModel.errorMessage.isEmpty {
                    Text("Error: \(viewModel.errorMessage)")
                        .foregroundColor(.red)
                        .padding()
                }
            }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(loginUseCase: LoginUseCase()))
    }
}
