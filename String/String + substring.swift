//
//  String + subscript.swift
//  String
//
//  Created by Gokhan Mutlu on 10.07.2021.
//

import Foundation

/**
 Integer substrings & subscripts
 */
extension String {
    
    /// string[0 ..< 5]
    public func substring(_ bounds: Range<Int>) -> String?{
        guard bounds.lowerBound >= 0,
              self.count >= bounds.upperBound else { return nil }
        
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
    
    /// string[0 ... 5]
    public func substring(_ bounds: ClosedRange<Int>) -> String?{
        guard bounds.lowerBound >= 0,
              self.count > bounds.upperBound else { return nil }
        
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    
    /// string[ ..< 5 ]
    public func substring(_ bounds: PartialRangeUpTo<Int>) -> String?{
        guard self.count >= bounds.upperBound else { return nil }
        
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[startIndex..<end])
    }
    
    /// string[ ...5 ]
    public func substring(_ bounds: PartialRangeThrough<Int>) -> String?{
        guard self.count > bounds.upperBound else { return nil }
        
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[startIndex...end])
    }
    
    
    /// string[5...]
    public func substring(_ bounds: CountablePartialRangeFrom<Int>) -> String?{
        guard bounds.lowerBound >= 0,
              bounds.lowerBound < self.count else { return nil }
        
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return String(self[start...end])
    }
    
    
    /**
     string[5]
     - parameter i: character index
     */
    public subscript (i: Int) -> String? {
        guard i >= 0, i < self.count else { return nil }
        return "\(self[index(startIndex, offsetBy: i)])"
    }
}
