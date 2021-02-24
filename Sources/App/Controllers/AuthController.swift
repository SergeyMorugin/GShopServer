//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        
        return req.eventLoop.future(response)
    }
    
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        
        let response = LoginResponse(
            result: 1,
            user: User(id: 123, login: "geekbrains", name: "John", lastname: "Doe"),
            auth_token: "test123"
        )
        
        return req.eventLoop.future(response)
    }
    
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let body = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        
        let response = LogoutResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
    func updateUser(_ req: Request) throws -> EventLoopFuture<UpdateUserResponse> {
        guard let body = try? req.content.decode(UpdateUserRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = UpdateUserResponse(
            result: 1
        )
        
        return req.eventLoop.future(response)
    }
    
}
