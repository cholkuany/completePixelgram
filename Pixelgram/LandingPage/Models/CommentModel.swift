//
//  CommentModel.swift
//  Pixelgram
//
//  Created by admin on 8/24/22.
//

import Foundation

struct CommentModel : Decodable {
    var content: [Comment]
    let totalElements: Int
    let numberOfElements: Int
    var last: Bool
}

struct Comment : Decodable, Identifiable {
    var id: Int
    let message: String
    let author: Author
}
