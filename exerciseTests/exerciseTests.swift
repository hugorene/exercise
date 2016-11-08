//
//  exerciseTests.swift
//  exerciseTests
//
//  Created by Hugo on 11/7/16.
//  Copyright © 2016 hugo. All rights reserved.
//

import XCTest
@testable import exercise

class exerciseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSearchAutosService() {
        let expectationTest = expectation(description: "Search autos")
        
        //let thingy = SearchService()
        SearchService.searchItem(url: "http://api-v2.olx.com/items?location=www.olx.com.ar&searchTerm=autos") { string in
            XCTAssertNotNil(string, "Expected non-nil string")
            expectationTest.fulfill()
        }
        
        waitForExpectations(timeout: 5.0, handler: nil)
    }
    
    func testSearchCasasService() {
        let expectationTest = expectation(description: "Search casas")
        
        //let thingy = SearchService()
        SearchService.searchItem(url: "http://api-v2.olx.com/items?location=www.olx.com.ar&searchTerm=casas") { string in
            XCTAssertNotNil(string, "Expected non-nil string")
            expectationTest.fulfill()
        }
        
        waitForExpectations(timeout: 5.0, handler: nil)
    }
    
    func testSearchEmptyService() {
        let expectationTest = expectation(description: "Search empty")
        
        //let thingy = SearchService()
        SearchService.searchItem(url: "http://api-v2.olx.com/items?location=www.olx.com.ar&searchTerm=") { string in
            XCTAssertNotNil(string, "Expected non-nil string")
            expectationTest.fulfill()
        }
        
        waitForExpectations(timeout: 5.0, handler: nil)
    }
    
}
