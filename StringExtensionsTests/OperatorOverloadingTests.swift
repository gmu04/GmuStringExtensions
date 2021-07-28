//
//  OperatorOverloadingTests.swift
//  StringTests
//
//  Created by Gokhan Mutlu on 28.07.2021.
//

import XCTest
@testable import String

class OperatorOverloadingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_setDefaultIfNilOrEmptyOperator_getValue(){
        var value = "Red fox"
        let defaultValue = "whatever it is"
    
        let expectedValue = value
        
        value ?= defaultValue
        XCTAssertEqual(value, expectedValue)
    }
    
    func test_setDefaultIfNilOrEmptyOperator_getDefaultValue(){
        var value:String?
        let expectedValue = "vessel-name"
        

        value = nil
        //act
        value ?= "vessel-name"
        XCTAssertEqual(value, expectedValue)
        
        
        value = ""
        //act
        value ?= "vessel-name"
        XCTAssertEqual(value, expectedValue)
    }
}
