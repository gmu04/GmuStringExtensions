//
//  String + email + turkish.swift
//  String
//
//  Created by Gokhan Mutlu on 10.07.2021.
//

import Foundation

extension String{
    
    /**
     - returns: localized string(, if any defined)
     # How to use it:
        "string_id".localized
     */
    public var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    /**
        Replace Turkish letters with similar English letters
     */
    public func noTurkishLetters() -> String{
        return self
            //lowercase
            .replacingOccurrences(of: "ğ", with: "g")
            .replacingOccurrences(of: "ı", with: "i")
            .replacingOccurrences(of: "ö", with: "o")
            .replacingOccurrences(of: "ş", with: "s")
            .replacingOccurrences(of: "ü", with: "u")
            //uppercase
            .replacingOccurrences(of: "Ğ", with: "G")
            .replacingOccurrences(of: "İ", with: "I")
            .replacingOccurrences(of: "Ö", with: "O")
            .replacingOccurrences(of: "Ş", with: "S")
            .replacingOccurrences(of: "Ü", with: "U")
    }
    
    
    /**
     Remove all whitespaces
     */
    public func removeWhitespaces() -> String{
        return self.replacingOccurrences(of: " ", with: "")
    }


}
