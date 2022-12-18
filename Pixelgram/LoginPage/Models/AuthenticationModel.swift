//
//  Authentication.swift
//  Pixelgram
//
//  Created by Owner on 2022-08-18.
//

import Foundation

struct AuthResponseTokenNon200: Codable {

    var timestamp: String
    var status: Int
    var error: String
    var message: String
    var path: String
}


struct AuthResponseToken200: Codable {
    var access_token: String
    var refresh_token: String
}


struct AuthRequestForm: Codable{
    var username: String
    var password: String
}
