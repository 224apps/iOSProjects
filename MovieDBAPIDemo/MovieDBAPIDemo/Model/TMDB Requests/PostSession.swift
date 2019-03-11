//
//  PostSession.swift
//  MovieDBAPIDemo
//
//  Created by Abdoulaye Diallo on 3/10/19.
//  Copyright © 2019 Abdoulaye Diallo. All rights reserved.

import Foundation

struct PostSession: Codable {
    
    let requestToken: String
    
    enum CodingKeys: String, CodingKey {
        case requestToken = "request_token"
    }
    
}
