//
//  StringTests.swift
//  StringTests
//
//  Created by Gokhan Mutlu on 10.07.2021.
//

import XCTest

class StringTests: XCTestCase {

    func test_validEmail() throws {
        var email:String
        
        email = "test@test.com"
        XCTAssertTrue(email.isValidEmail)
        
        email = "test@test.co"
        XCTAssertTrue(email.isValidEmail)
        
        email = "test.test@test.com.tr"
        XCTAssertTrue(email.isValidEmail)
    }

    func test_inValidEmail() throws {
        var email:String
        
        email = "test1@"
        XCTAssertFalse(email.isValidEmail)
        
        email = "test2@test"
        XCTAssertFalse(email.isValidEmail)
        
        email = "test3.test"
        XCTAssertFalse(email.isValidEmail)
    }
 
    func test_replaceTurkishLetters(){
        let name = "Ğökhaş MÜtlü"
        XCTAssertEqual("Gokhas MUtlu", name.noTurkishLetters())
    }
    
   
    func test_removeWhitespaces(){
        let name = "  Gök han  .  Mutl  u "
        XCTAssertEqual("Gökhan.Mutlu", name.removeWhitespaces())
    }
    
}
