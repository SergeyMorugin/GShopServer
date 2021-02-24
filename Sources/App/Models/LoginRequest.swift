//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct LoginRequest: Content  {
    var username: String
    var password: String
}
