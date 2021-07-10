//
//  String + subscript.swift
//  String
//
//  Created by Gokhan Mutlu on 10.07.2021.
//

import Foundation

/**
 Integer Subscripts
 */
extension String {
    
    /**
     
     string[0 ..< 5]
     
     - parameter bounds: range like 0 ..< 5
     - returns: String?
     */
    public subscript (bounds: CountableRange<Int>) -> String?{
        guard bounds.lowerBound >= 0,
              self.count >= bounds.upperBound else { return nil }
        
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
    
    /**
  
     string[0 ... 5]
     
     - parameter bounds: range like 0 ... 5
     - returns: String?
     */
    public subscript (bounds: CountableClosedRange<Int>) -> String?{
        guard bounds.lowerBound >= 0,
              self.count > bounds.upperBound else { return nil }
        
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    
    /**
     
     string[..< 5]
     
     - parameter bounds: range like  ..< 5
     - returns: String?
     */
    public subscript (bounds: PartialRangeUpTo<Int>) -> String?{
        guard self.count >= bounds.upperBound else { return nil }
        
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[startIndex..<end])
    }
    
    /**
     
     string[...5]
     
     - parameter bounds: range like  ... 5
     - returns: String?
     */
    public subscript (bounds: PartialRangeThrough<Int>) -> String?{
        guard self.count > bounds.upperBound else { return nil }
        
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[startIndex...end])
    }
    
    
    /**
     
     string[5...]
     
     - parameter bounds: range like  5 ...
     - returns: String?
     */
    public subscript (bounds: CountablePartialRangeFrom<Int>) -> String?{
        guard bounds.lowerBound >= 0,
              bounds.lowerBound < self.count else { return nil }
        
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return String(self[start...end])
    }
    
    
    /**
     
     string[5]
     
     - parameter i: character index
     - returns: String?
     */
    public subscript (i: Int) -> String? {
        guard i >= 0, i < self.count else { return nil }
        return "\(self[index(startIndex, offsetBy: i)])"
    }
}
