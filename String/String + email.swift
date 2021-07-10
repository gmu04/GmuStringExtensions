//
//  String + email + turkish.swift
//  String
//
//  Created by Gokhan Mutlu on 10.07.2021.
//

import Foundation

extension String{
    
    /**
     Checks if given email is valid or not
     
     # How to use:
        let isValid = "test@test.com".isValidEmail
     */
    public var isValidEmail: Bool {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", regex)
        return emailTest.evaluate(with: self)
    }
    
    

}
