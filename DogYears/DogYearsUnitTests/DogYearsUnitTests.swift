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
    var resData: Data? = nil
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMenuFailing() {
         var menu = Menu()
        menu.loadMenu(path: "Dummy.plist")
         let count = menu.count
         XCTAssert(count == 0, "Menu loaded menu items for non-existent menu file")
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
    
    func testInfoLoading(){
        let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
        let session =  MockSession()
        let client =  HTTPClient(session: session)
        client.get(url: url) { (data, error) in
         self.resData = data
        }
        
        let pred = NSPredicate(format: "resData != nil")
        let exp = expectation(for: pred, evaluatedWith: self, handler: nil)
         let res = XCTWaiter.wait(for: [exp], timeout: 5.0)
        if res == XCTWaiter.Result.completed {
             XCTAssertNotNil(res, "No Data received for info View ")
        } else {
            XCTAssert(false, "the call to get the URL ran into some other error")
        }
    }
    func testSettingViewLoading(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        XCTAssertNotNil(false, " Couldn't load the storyboard")
         let vc = storyboard.instantiateViewController(withIdentifier: "SettingsView") as? SettingsViewController
            XCTAssertNotNil(vc, " Couldn't load the settingsViewController")
    
    }
    

    
    
    
}
