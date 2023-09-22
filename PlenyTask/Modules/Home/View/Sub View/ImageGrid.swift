//
//  ImageGrid.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import SwiftUI

struct ImageGrid: View {
    let images: [String]
    var body: some View {
        if images.count == 3 {
            HStack(spacing: 3) {
                Image(images[0])
                    .resizable()
                    .clipped()
                    .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 343)
                    .cornerRadius(8)
                    .accessibilityIdentifier("ImageGrid_image1")
                
                VStack(spacing: 3) {
                    Image(images[1])
                        .resizable()
                        .clipped()
                        .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 343 / 2)
                        .cornerRadius(8)
                        .accessibilityIdentifier("ImageGrid_image2")
                    
                    Image(images[2])
                        .resizable()
                        .clipped()
                        .frame(width: UIScreen.main.bounds.width / 2 - 30, height: 343 / 2)
                        .cornerRadius(8)
                        .accessibilityIdentifier("ImageGrid_image3")
                }
            }
        } else if images.count == 1 {
            Image(images[0])
                .resizable()
                .clipped()
                .frame(width: UIScreen.main.bounds.size.width - 60, height: 173)
                .cornerRadius(8)
                .accessibilityIdentifier("ImageGrid_image4")
        }
    }
}
