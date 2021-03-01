//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct ProductShowResponse: Content {
    let id: Int
    let name: String
    let price: Int
    let desc: String
    
    enum CodingKeys: String, CodingKey {
        case id = "result"
        case name = "product_name"
        case price = "product_price"
        case desc = "product_description"
    }
}
