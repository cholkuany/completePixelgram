//
//  CreatePostUnitTests.swift
//  PixelgramTests
//
//  Created by admin on 9/1/22.
//

import XCTest
@testable import Pixelgram

class CreatePostUnitTests: XCTestCase {
    var viewModel = PostViewModel()
    var httpClient = MockAlamoManager.shared
    
    override func setUp() {
        httpClient = MockAlamoManager.shared
        viewModel = .init(alamoManager: httpClient)
    }
    
    func testNewPostCreationSucceeds(){

          let message = "new post"

          let token = "1234556789"

          let picture = Data("some data".utf8)

        httpClient.data = MockCreatePostData().mockSuccessfulPost()

          httpClient.status = 200

          viewModel.postComment(picture: picture, message: message, token: token)

          XCTAssertTrue(viewModel.uploaded && httpClient.status == 200)

      }
    
    func testNewPostCreationFails(){

           let message = "new post"

           let token = "1234556789"

           let picture = Data("some data".utf8)

        httpClient.data = MockCreatePostData().mockSuccessfulPost()

           httpClient.status = 400

           viewModel.postComment(picture: picture, message: message, token: token)

           XCTAssertFalse(viewModel.uploaded && httpClient.status == 400)

       }
}
