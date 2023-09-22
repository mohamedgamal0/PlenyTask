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
            NavigationView {
                VStack {
                    HStack {
                        Image("LOGO_img")
                            .frame(width: 60, height: 16)
                        Spacer()
                        NavigationLink(destination: Text("Search View")) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(PlenyUI.Theme.Color.Grey.x700.color)
                        }
                    }
                    .padding()

                    ProductListView(products: viewModel.products)
                        .onAppear {
                            viewModel.fetchProducts()
                        }
                }
            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel(appCoordinator: AppCoordinator(), productListUseCase: HomeUseCase(productRepository: ProductRepositoryImpl())))
    }
}
