//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct UpdateUserRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}
