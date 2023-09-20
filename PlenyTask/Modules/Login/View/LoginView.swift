//
//  LoginView.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 14/09/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    @State private var username = ""
    @State private var password = ""
    
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
                    StyledTextField(text: $username, placeholder: "Username", label: "Username")
                    StyledTextField(text: $password, placeholder: "Password", label: "Password")
                }
                
                Spacer().frame(height: 24)
                
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(loginUseCase: LoginUseCase()))
    }
}
