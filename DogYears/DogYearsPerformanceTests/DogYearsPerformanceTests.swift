//
//  DogYearsPerformanceTests.swift
//  DogYearsPerformanceTests
//
//  Created by Abdoulaye Diallo on 3/21/19.
//  Copyright © 2019 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears

class DogYearsPerformanceTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMenuLoadPerformance(){
        
        var menu = Menu()
        self.measure {
            menu.loadDefaultMenu()
        }
    }
    
}
