//
//  tdd_swift_1Tests.swift
//  tdd-swift-1Tests
//
//  Created by Jonny Pickard on 15/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import XCTest
@testable import tdd_swift_1 //Imports everthing in the tdd_swift_1 module (the main app)
//@testable makes internal elements of the module accessible to the test case

class tdd_swift_1Tests: XCTestCase {
    
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
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
