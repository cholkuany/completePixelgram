//
//  PostModel.swift
//  Pixelgram
//
//  Created by Sevag Gaprielian on 2022-08-16.
//

import Foundation

struct PostModel : Decodable {
    let content : [Post]
    let last: Bool
}

struct Post : Decodable, Identifiable {
    var id: Int
    let author : Author
    let message : String?
    let imageUrl : String?
    let likeCount : Int
    let comments: CommentModel
}

struct Author : Decodable {
    let username : String
    let profileImageUrl : String?
}
