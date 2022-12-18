//
//  ResponseData.swift
//  Pixelgram
//
//  Created by Peter on 8/17/22.
//

import Foundation

/// Response Data Model - parse responsed json when status code is not 200 (Unsuccessful)
struct ResponseData_RegistrationNon200: Codable {
    var timestamp: String
    var status: Int
    var error: String
    var message: String
    var path: String
}

/// Response Data Model - parse responsed json when status code is 200 (Successful)
struct ResponseData_Registration200: Codable {
    var access_token: String
    var refresh_token: String
}
