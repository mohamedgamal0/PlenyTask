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
                .foregroundColor(.white)
                .frame(height: 46)
                .padding(.vertical, 12)
                .padding(.horizontal, 8)
                .padding(.trailing, 16)
                .padding(.leading, 16)
                .background(Color.blue)
                .cornerRadius(32)
        }
        .padding(.trailing, 16)
        .padding(.leading, 16)
        .frame(height: 46)


    }
}

struct LoginButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Login", action: {})
    }
}
