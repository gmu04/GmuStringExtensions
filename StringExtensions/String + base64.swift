//
//  String + encodable.swift
//  StringExtensions
//
//  Created by Gokhan Mutlu on 27.09.2021.
//

import Foundation

public protocol Base64Codable{
	var base64Encoded:String?{ get }
	var base64Decoded:String?{ get }
}

extension String:Base64Codable {
	
	public var base64Encoded:String?{
		let utf8 = self.data(using: .utf8)
		let base64 = utf8?.base64EncodedString()
		return base64
	}
	
	public var base64Decoded:String?{
		guard let base64 = Data(base64Encoded: self) else{ return nil }
		let utf8 = String(data: base64, encoding: .utf8)
		return utf8
	}
	
}
