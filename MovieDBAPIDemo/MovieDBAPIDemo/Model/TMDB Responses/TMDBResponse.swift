//
//  TMDBResponse.swift
//  MovieDBAPIDemo
//
//  Created by Abdoulaye Diallo on 3/10/19.
//  Copyright © 2019 Abdoulaye Diallo. All rights reserved.

import Foundation

struct TMDBResponse: Codable {
    let statusCode: Int
    let statusMessage: String
    
    enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
}

extension TMDBResponse: LocalizedError {
    var errorDescription: String? {
        return statusMessage
    }
}
