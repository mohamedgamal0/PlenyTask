//
//  StyledTextFiled.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct StyledTextField: View {
    @Binding var text: String
    let placeholder: String
    let label: String?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) { // Use a VStack with spacing 6
            if let label = label {
                Text(label)
                    .font(PlenyUI.Theme.Typography.SubHeadLines.semibold.font)
                    .foregroundColor(PlenyUI.Theme.Color.Grey.x100.color)
                    .padding(.trailing, 16)
                    .padding(.leading, 16)
                    .padding(.bottom, 8)
            }
            
            TextField(placeholder, text: $text)
                .frame(height: 42)
                .padding(.horizontal, 14)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(PlenyUI.Theme.Color.Grey.x300.color,
                                lineWidth: 1))
                       .padding(.trailing, 16)
                       .padding(.leading, 16)

        }
    }
}

struct StyledTextField_Previews: PreviewProvider {
    static var previews: some View {
        StyledTextField(text: .constant(""), placeholder: "Placeholder", label: "Label")
    }
}
