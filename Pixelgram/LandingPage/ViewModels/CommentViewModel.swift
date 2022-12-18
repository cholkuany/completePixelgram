//
//  CommentViewModel.swift
//  Pixelgram
//
//  Created by Xavier on 8/26/22.
//

import Foundation
import Alamofire

class CommentViewModel: ObservableObject {
    @Published var loaded: Bool = false
    @Published var comments: [Comment] = [Comment]()
    public var canLoadMoreComments = false
    private var currentCommentPage = 1
    public var numComments: Int = 0
    private let alamoManger: AlamoManagerProtocol
    
    init(alamoManager: AlamoManagerProtocol = AlamoManager(baseUrl: "http://34.134.148.105")){
        self.alamoManger = alamoManager
    }
    
    func getComments(postId: Int){
        loaded = false
        alamoManger.getData(resource: "posts/\(postId)/comments", of: CommentModel.self, params: ["pageNumber" : self.currentCommentPage, "pageSize" : 5], headers: nil) {[self] comments in
            guard let comment = comments else {
                return
            }
            self.comments += comment.content
            self.currentCommentPage += 1
            canLoadMoreComments = !comment.last
            self.numComments = comment.totalElements
            loaded = true
        }
    }
    
}
