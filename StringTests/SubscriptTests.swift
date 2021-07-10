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
    func test_Subscript_CountableRange() throws {
        result = gokhanmutlu[0..<6]
        XCTAssertEqual("gokhan", result!)
        
        result = gokhanmutlu[-1..<1]
        XCTAssertEqual(nil, result)

        result = gokhanmutlu[0..<(gokhanmutlu.count+1)]
        XCTAssertEqual(nil, result)
    }

    /// string[0...5]
    func test_Subscript_CountableClosedRange() throws {
        result = gokhanmutlu[0...5]
        XCTAssertEqual("gokhan", result)
        
        result = gokhanmutlu[-1...1]
        XCTAssertEqual(nil, result)
        
        result = gokhanmutlu[0...(gokhanmutlu.count+1)]
        XCTAssertEqual(nil, result)
    }


    /// string[..<6]
    func test_Subscript_PartialRangeUpTo() throws {
        result = gokhanmutlu[..<6]
        XCTAssertEqual("gokhan", result)
        
        result = gokhanmutlu[0..<(gokhanmutlu.count+1)]
        XCTAssertEqual(nil, result)
    }

    

    /// string[...5]
    func test_Subscript_PartialRangeThrough() throws {
        result = gokhanmutlu[...5]
        XCTAssertEqual("gokhan", result)
        
        result = gokhanmutlu[0...gokhanmutlu.count]
        XCTAssertEqual(nil, result)
    }

    
    /// string[6...]
    func test_Subscript_CountablePartialRangeFrom() throws {
        result = gokhanmutlu[6...]
        XCTAssertEqual("mutlu", result)
        
        result = gokhanmutlu[(gokhanmutlu.count-1)...]
        XCTAssertEqual("u", result)

        result = gokhanmutlu[-1]
        XCTAssertEqual(nil, result)

        result = gokhanmutlu[(gokhanmutlu.count)...]
        XCTAssertEqual(nil, result)

        result = gokhanmutlu[(gokhanmutlu.count+1)...]
        XCTAssertEqual(nil, result)
    }
    
    /// string[5]
    func test_Subscript() throws {
        result = gokhanmutlu[1]
        XCTAssertEqual("o", result)
        
        result = gokhanmutlu[-1]
        XCTAssertEqual(nil, result)
        
        result = gokhanmutlu[100]
        XCTAssertEqual(nil, result)
    }
    

}
