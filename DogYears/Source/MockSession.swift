//
//  MockSession.swift
//  DogYears
//
//  Created by Abdoulaye Diallo on 3/20/19.
//  Copyright © 2019 Razeware. All rights reserved.
//

import Foundation


class MockSession: URLSessionProtocol {
    func dataTask(with request: URLRequest,
                  completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTaskProtocol {
        
        completion(Data(), nil, nil)
        return MockDataTask()
    }
    
}
