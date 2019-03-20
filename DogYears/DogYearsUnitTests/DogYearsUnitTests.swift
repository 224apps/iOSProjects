//
//  DogYearsUnitTests.swift
//  DogYearsUnitTests
//
//  Created by Brian on 11/30/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears

class DogYearsUnitTests: XCTestCase {
    
     let cal = Calculator()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd(){
        let result = cal.evaluate(op: "+", arg1: 2.0, arg2: 2.0)
        XCTAssert(result == 4.0, "Calculator addition operation failed")
    }
    
    func testSubs(){
        let result = cal.evaluate(op: "−", arg1: 2.0, arg2: 2.0)
        XCTAssert(result == 0.0, "Calculator substraction operation failed.")
    }
    func testResult(){
        let res1 = cal.evaluate(op: "+", arg1: 4.0, arg2: 3.0)
        let res2 = cal.result
        XCTAssert(res1 == res2, "Calculator result failed.")
    }
    func testClear(){
         cal.clear()
        let res = cal.result
        XCTAssert(res == 0.0, "Calculator clear test operation failed.")
        
        
    }
    
}
