//
//  File.swift
//  
//
//  Created by Matthew on 04.03.2021.
//

import Foundation

import Vapor

class CartsController {
    
    func checkout(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
        print(req.content)
        guard let id = req.parameters.get("id") else {
            throw Abort(.badRequest)
        }

        let response = CommonResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
}
