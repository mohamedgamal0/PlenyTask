//
//  ProductsPayload.swift
//  PlenyTask
//
//  Created by Mohamed Gamal on 22/09/2023.
//

import Foundation

struct ProductsPayload: Codable {
    let posts: [Post]
}

struct Post: Codable {
    let id: Int
    let title, body: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case body
    }
}
