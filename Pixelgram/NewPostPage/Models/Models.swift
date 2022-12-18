//  Models.swift
//  startUp
//  Created by M_2217301 on 8/30/22.
//

import Foundation

//http://34.134.148.105/posts
/*struct PostM {
    var message: Data
    var image: Data
}

*/

struct SuccessResponse:Decodable {
    var id: Int
    var author: PostAuthor
    var message: String
    var imageUrl: String

}

struct PostAuthor:Decodable {

    var id: Int
    var username, profileImageUrl: String

}
