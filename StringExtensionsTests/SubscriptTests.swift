//
//  StringTests.swift
//  StringTests
//
//  Created by Gokhan Mutlu on 10.07.2021.
//

import XCTest
@testable import String

class SubscriptTests: XCTestCase {

    private let gokhanmutlu = "gokhanmutlu"
    private var result:String!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        result = ""
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    
    /// string[0..<5]
    func test_substring_CountableRange() throws {
        result = gokhanmutlu.substring(0..<6)
        XCTAssertEqual("gokhan", result!)
        
        result = gokhanmutlu.substring(-1..<1)
        XCTAssertEqual(nil, result)

        result = gokhanmutlu.substring(0..<(gokhanmutlu.count+1))
        XCTAssertEqual(nil, result)
    }

    /// string[0...5]
    func test_substring_CountableClosedRange() throws {
        result = gokhanmutlu.substring(0...5)
        XCTAssertEqual("gokhan", result)
        
        result = gokhanmutlu.substring(-1...1)
        XCTAssertEqual(nil, result)
        
        result = gokhanmutlu.substring(0...(gokhanmutlu.count+1))
        XCTAssertEqual(nil, result)
    }


    /// string[..<6]
    func test_substring_PartialRangeUpTo() throws {
        result = gokhanmutlu.substring(..<6)
        XCTAssertEqual("gokhan", result)
        
        result = gokhanmutlu.substring(..<(gokhanmutlu.count+1))
        XCTAssertEqual(nil, result)
    }

    

    /// string[...5]
    func test_substring_PartialRangeThrough() throws {
        result = gokhanmutlu.substring(...5)
        XCTAssertEqual("gokhan", result)
        
        result = gokhanmutlu.substring(...gokhanmutlu.count)
        XCTAssertEqual(nil, result)
    }

    
    /// string[6...]
    func test_substring_CountablePartialRangeFrom() throws {
        result = gokhanmutlu.substring(6...)
        XCTAssertEqual("mutlu", result)
        
        result = gokhanmutlu.substring((gokhanmutlu.count-1)...)
        XCTAssertEqual("u", result)

        result = gokhanmutlu[-1]
        XCTAssertEqual(nil, result)

        result = gokhanmutlu.substring((gokhanmutlu.count)...)
        XCTAssertEqual(nil, result)

        result = gokhanmutlu.substring((gokhanmutlu.count+1)...)
        XCTAssertEqual(nil, result)
    }
    
    /// string[5]
    func test_substring() throws {
        result = gokhanmutlu[1]
        XCTAssertEqual("o", result)
        
        result = gokhanmutlu[-1]
        XCTAssertEqual(nil, result)
        
        result = gokhanmutlu[100]
        XCTAssertEqual(nil, result)
    }
    

}
