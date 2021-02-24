//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct ProductShowRequest: Content {
    let id: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "product_id"
    }
}
