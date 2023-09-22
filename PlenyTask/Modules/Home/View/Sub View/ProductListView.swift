//
//  ProductListView.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct ProductListView: View {
    let products: [Product]
    
    var body: some View {
        List {
            ForEach(products, id: \.id) { product in
                ProductCellView(product: product)
                    .listRowInsets(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0))
            }
        }
    }
}
