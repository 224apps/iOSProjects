//
//  Logout.swift
//  MovieDBAPIDemo
//
//  Created by Abdoulaye Diallo on 3/10/19.
//  Copyright © 2019 Abdoulaye Diallo. All rights reserved.

import Foundation

struct LogoutRequest: Codable {
    let sessionId: String
    
    enum CodingKeys: String, CodingKey {
        case sessionId = "session_id"
    }
}
