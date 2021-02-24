//
//  File.swift
//  
//
//  Created by Matthew on 24.02.2021.
//

import Vapor

struct User: Content {
    let id: Int
    let login: String
    let name: String
    let lastname: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
    }
}
