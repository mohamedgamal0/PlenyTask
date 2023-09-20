//
//  PrimaryButton.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(PlenyUI.Theme.Typography.HeadLines.semibold.font)
                .frame(maxWidth: .infinity)
                .padding()
                .background(PlenyUI.Theme.Color.Primary.x100.color)
                .foregroundColor(.white)
                .cornerRadius(32)
        }
        .padding(.trailing, 16)
        .padding(.leading, 16)
        .frame(height: 46)


    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Sign in", action: {})
    }
}
