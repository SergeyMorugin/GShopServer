//
//  File.swift
//  
//
//  Created by Matthew on 04.03.2021.
//
import Vapor

struct CartItemsCreateRequest: Content  {
    var product_id: Int
    var quantity: Int
}
