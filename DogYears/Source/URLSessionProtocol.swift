//
//  URLSessionProtocol.swift
//  DogYears
//
//  Created by Abdoulaye Diallo on 3/20/19.
//  Copyright © 2019 Razeware. All rights reserved.
//

import Foundation

protocol URLSessionProtocol {
    func dataTask(with request: URLRequest,
                  completion: @escaping (Data?, URLResponse?, Error?) -> Void ) -> URLSessionDataTaskProtocol
}


extension URLSession: URLSessionProtocol {
    func dataTask(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        let task  = dataTask(with: request, completion: completion) as! URLSessionDataTask
        return task as URLSessionDataTaskProtocol
    }
}

extension URLSessionDataTask : URLSessionDataTaskProtocol {
    
}
