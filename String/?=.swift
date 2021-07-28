//
//  SetDefaultIfNilOrEmpty.swift
//  String
//
//  Created by Gokhan Mutlu on 26.07.2021.
//

import Foundation

/**
 Operator "setDefaultIfNilOrEmpty"
 set left side value to the default value (right side),  if it is nil or empty
 */
infix operator ?=
func ?=(_ lhs:inout String?, _ rhs:String){
    guard var left = lhs else {
        lhs = rhs
        return
    }
    left ?= rhs
    lhs = left
}
func ?=(_ lhs:inout String, _ rhs:String){
    lhs = lhs.trimmingCharacters(in: .whitespacesAndNewlines)
    lhs = lhs == "" ? rhs : lhs
}
