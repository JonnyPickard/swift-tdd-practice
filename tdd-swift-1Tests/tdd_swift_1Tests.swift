//
//  tdd_swift_1Tests.swift
//  tdd-swift-1Tests
//
//  Created by Jonny Pickard on 15/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import XCTest
@testable import tdd_swift_1
//Imports everthing in the tdd_swift_1 module (the main app)
//@testable makes internal elements of the module accessible to the test case

class tdd_swift_1Tests: XCTestCase {
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        viewController = ViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfVowelsInString_ShouldReturnNumberOfVowels() {
        let string = "Jonny"
        
        let numberOfVowels = viewController.numberOfVowelsInString(string)
        
        XCTAssertEqual(numberOfVowels, 1, "should find 1 vowel in Jonny")
    }
    
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital() {
        let inputString =       "this is A test headline"
        
        let expectedHeadline =  "This Is A Test Headline"
            
        let result =            viewController.makeHeadline(inputString)
        
        XCTAssertEqual(result, expectedHeadline)
    }
    
    func testMakeHeadline_ReturnsStringWithEachWordStartCapital2() {
        let inputString =       "Here is another Example"
        
        let expectedHeadline =  "Here Is Another Example"
            
        let result =            viewController.makeHeadline(inputString)
        
        XCTAssertEqual(result, expectedHeadline)
    }
    
}
