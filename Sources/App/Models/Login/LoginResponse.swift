//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User
    var auth_token: String
}
