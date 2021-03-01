//
//  File.swift
//  
//
//  Created by Matthew on 01.03.2021.
//

import Vapor

struct ReviewCreateResponse: Content {
    let result: Int
    let userMessage: String
}
