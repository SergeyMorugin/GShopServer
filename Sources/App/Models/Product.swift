//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import  Vapor

struct Product: Content {
    let id: Int
    let name: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case name = "product_name"
        case price = "price"
    }
}

