//
//  ProductCellView.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct ProductCellView: View {
    let product: Product
    
    var body: some View {
        VStack(spacing: 12) {
            HStack(alignment: .top, spacing: 4) {
                Image(product.profileImageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(product.userName)
                        .font(PlenyUI.Theme.Typography.HeadLines.semibold.font)
                        .foregroundColor(PlenyUI.Theme.Color.Grey.x900.color)
                    Text(product.date)
                        .font(PlenyUI.Theme.Typography.Footnote.regular.font)
                        .foregroundColor(PlenyUI.Theme.Color.Grey.x600.color)
                }
                
                
                Spacer()
            }
            
            Text("Craving something delicious? Try our new dish - a savory mix of roasted vegetables and quinoa, topped with a zesty garlic. Yum!")
                .font(PlenyUI.Theme.Typography.Body.regular.font)
                .foregroundColor(PlenyUI.Theme.Color.Grey.x700.color)
            
            ImageGrid(images: product.images)
        }
        .padding([.leading, .trailing], 16)
        
    }
}

struct ProductCellView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = Product(id: 1, userName: "User1", date: "August 25, 2023", profileImageName: "welcome_login_img", images: ["Rectangle-3"])
        
        return ProductCellView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
