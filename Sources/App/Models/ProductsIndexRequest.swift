//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct ProductsIndexRequest: Content{
    let page: Int
    let perPage: Int
}
