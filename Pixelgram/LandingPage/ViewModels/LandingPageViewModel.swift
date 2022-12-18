//
//  LandingPageViewModel.swift
//  Pixelgram
//
//  Created by admin on 8/17/22.
//

import Combine
import Foundation
class LandingPageViewModel: ObservableObject {
    
    @Published var loaded: Bool = false
    @Published var canLoadMoreComments = true
    @Published var posts: [Post] = [Post]()
    @Published var comments: [Comment] = [Comment]()
    public var numComments: Int = 0
    private var currentPage = 0
    private var currentCommentPage = 0
    private var canLoadMorePages = true
    private let alamoManger: AlamoManagerProtocol
    
    init(alamoManager: AlamoManagerProtocol = AlamoManager(baseUrl: "http://34.134.148.105")){
        self.alamoManger = alamoManager
    }
    
    func getPosts(){
        guard canLoadMorePages else {
            return
        }
        
        alamoManger.getData(resource: "posts", of: PostModel.self, params: ["pageNumber" : currentPage, "pageSize" : 5], headers: nil) {[self] posts in
            self.posts = self.posts + posts!.content
            self.currentPage += 1
            if posts!.last{
                canLoadMorePages = false
            }
            self.loaded = true
        }
    }
    
    func loadMoreContentIfNeeded(currentItem item: Post?){
        guard let item = item else {
            if !loaded{
                getPosts()
            }
            return
        }
        
        let thresholdIndex = posts.index(posts.endIndex, offsetBy: -1)
        if posts.firstIndex(where: { $0.id == item.id }) == thresholdIndex {
            getPosts()
        }
    }
    
    func getComments(postId: Int, currentPostCommentPage: Int){
        loaded = false
        alamoManger.getData(resource: "posts/\(postId)/comments", of: CommentModel.self, params: ["pageNumber" : currentPostCommentPage, "pageSize" : 5], headers: nil) {[self] comments in
            self.comments += comments!.content
//            self.currentCommentPage += 1
            if comments!.last{
                canLoadMoreComments = false
            }
            self.numComments = comments!.totalElements
            loaded = true
            
        }
    }
    
    func getNumComments(postId: Int){
        loaded = false
        alamoManger.getData(resource: "posts/\(postId)/comments", of: CommentModel.self, params: ["pageNumber" : currentCommentPage, "pageSize" : 5], headers: nil) {[self] comments in
            self.numComments = comments!.totalElements
            loaded = true
            
        }
    }
}
