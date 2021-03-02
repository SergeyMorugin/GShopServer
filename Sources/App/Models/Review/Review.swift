//
//  File.swift
//  
//
//  Created by Matthew on 01.03.2021.
//

import Vapor

struct Review: Content {
    let id: Int
    let userId: Int
    let text: String
}
