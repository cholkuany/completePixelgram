//
//  MockCreatePostData.swift
//  PixelgramTests
//
//  Created by admin on 9/1/22.
//

import Foundation

class MockCreatePostData{
    func mockSuccessfulPost() -> Data{
        let dataString : String = """

{
  "createdOn": "2022-09-01T17:48:28.453+00:00",
  "id": 58,
  "author": {
    "id": 20,
    "username": "thomas",
    "profileImageUrl": null
  },
  "message": "saw a waterfall",
  "imageUrl": "https://i.imgur.com/m6imgAi.jpeg"
}

"""
        
        let data = Data(dataString.utf8)
        
        return data
    }
}
