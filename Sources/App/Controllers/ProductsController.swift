//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

class ProductsController {
    func index(_ req: Request) throws -> EventLoopFuture<ProductsIndexResponse> {
        print(req.content)
        if let page = req.query[Int.self, at: "page"] {
            print(page)
        }
        
        if let perPage = req.query[Int.self, at: "perPage"]  {
            print(perPage)
        }
        
        let response = ProductsIndexResponse(last_page: true, items: [
            Product(id: 123, name: "Ноутбук", price: 45600),
            Product(id: 456, name: "Мышка", price: 1000)
        ])
        
        return req.eventLoop.future(response)
    }
    
    func show(_ req: Request) throws -> EventLoopFuture<ProductShowResponse> {
        print(req.content)
        guard let id = req.parameters.get("id") else {
            throw Abort(.badRequest)
        }

        let response = ProductShowResponse(
            id: 1,
            name: "Ноутбук",
            price: 45600,
            desc: "Мощный игровой ноутбук"
        )
        
        return req.eventLoop.future(response)
    }
    
}
