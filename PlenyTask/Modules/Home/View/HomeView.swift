//
//  HomeView.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 20/09/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    let sampleProducts: [Product] = [
        Product(id: 1, userName: "User1", date: "August 25, 2023", profileImageName: "Rectangle", images: ["Rectangle", "Rectangle-2", "Rectangle-3"]),
        Product(id: 2, userName: "User2", date: "August 26, 2023", profileImageName: "Rectangle", images: ["Rectangle-3"]),
    ]
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

                    ProductListView(products: sampleProducts)
                        
                }
            }
        }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel(appCoordinator: AppCoordinator()))
    }
}
