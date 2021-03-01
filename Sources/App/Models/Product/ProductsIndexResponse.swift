//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct ProductsIndexResponse: Content{
    let last_page: Bool
    let items: [Product]
}
