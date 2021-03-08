//
//  File.swift
//  
//
//  Created by Matthew on 04.03.2021.
//

import Vapor

class CartItemsController {

    
    func create(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        guard let body = try? req.content.decode(CartItemsCreateRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)

        let response = CommonResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
    func delete(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        print(req)
        if let page = req.query[Int.self, at: "productId"] {
            print(page)
        }

        let response = CommonResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
}
