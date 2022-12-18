//
//  User.swift
//  Pixelgram
//
//  Created by Peter on 8/17/22.
//

import Foundation

/// User Model - to pass credential inputs as data paramter for API calls
struct User: Encodable{
    var username: String
    var password: String
}
