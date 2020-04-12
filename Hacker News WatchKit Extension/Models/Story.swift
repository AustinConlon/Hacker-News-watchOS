//
//  Story.swift
//  Hacker News WatchKit Extension
//
//  Created by Austin Conlon on 4/11/20.
//  Copyright © 2020 Austin Conlon. All rights reserved.
//

import Foundation

struct Item: Hashable, Codable {
    var id: Int
    var title: String
    var url: URL
    var category: Category
    
    enum Category: String, Codable {
        case story
        case job
    }
}
