//
//  Endpoint.swift
//  Hacker News WatchKit Extension
//
//  Created by Austin Conlon on 4/4/20.
//  Copyright © 2020 Austin Conlon. All rights reserved.
//

import Foundation

struct Endpoint {
    var path: String
    var queryItems: [URLQueryItem] = []
    
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "hacker-news.firebaseio.com/v0/"
        components.path = "/" + path + ".json"
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
}

extension Endpoint {
    static var topStories: Self {
        Endpoint(path: "top")
    }
}
