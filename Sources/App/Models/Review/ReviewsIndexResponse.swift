//
//  File.swift
//  
//
//  Created by Matthew on 01.03.2021.
//

import Vapor

struct ReviewsIndexResponse: Content{
    let last_page: Bool
    let items: [Review]
}
