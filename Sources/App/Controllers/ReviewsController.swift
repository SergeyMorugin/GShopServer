//
//  File.swift
//  
//
//  Created by Matthew on 01.03.2021.
//
import Vapor

class ReviewsController {
    func index(_ req: Request) throws -> EventLoopFuture<ReviewsIndexResponse> {
        print(req.content)
        if let page = req.query[Int.self, at: "page"] {
            print(page)
        }
        
        if let perPage = req.query[Int.self, at: "perPage"]  {
            print(perPage)
        }
        
        let response = ReviewsIndexResponse(last_page: true, items: [
            Review(id: 1, userId: 1, text: "Review1"),
            Review(id: 2, userId: 2, text: "Review2")
        ])
        
        return req.eventLoop.future(response)
    }
    
    
    func create(_ req: Request) throws -> EventLoopFuture<ReviewCreateResponse> {
        guard let body = try? req.content.decode(ReviewCreateRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)

        let response = ReviewCreateResponse(
            result: 1,
            userMessage: "Ваш отзыв был принят на модерацию"
        )
        
        return req.eventLoop.future(response)
    }
    
    func delete(_ req: Request) throws -> EventLoopFuture<CommonResponse> {
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
