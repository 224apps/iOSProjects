//
//  MovieResults.swift
//  MovieDBAPIDemo
//
//  Created by Abdoulaye Diallo on 3/10/19.
//  Copyright © 2019 Abdoulaye Diallo. All rights reserved.

import Foundation

struct MovieResults: Codable {
    
    let page: Int
    let results: [Movie]
    let totalPages: Int
    let totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
    
}
