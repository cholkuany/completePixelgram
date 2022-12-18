//
//  CommentView.swift
//  Pixelgram
//
//  Created by Xavier on 8/24/22.
//

import SwiftUI

struct CommentView: View {
    @StateObject private var commentVM = CommentViewModel()
    @State var commentModel: CommentModel
    
    var postID: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            if commentVM.canLoadMoreComments {
                Button(
                    action: {
                        commentVM.getComments(postId: postID)
                    },
                    label: {
                        Text("View more comments")
                            .foregroundColor(Color(uiColor: UIColor(
                                red: 0.671,
                                green: 0.671,
                                blue: 0.671,
                                alpha: 1.0)))
                            .font(Font.custom("Roboto-Medium", size: 15))
                    }
                )
                .accessibilityIdentifier("ShowMoreCommentButton_LandingPage")
            }

            ForEach (commentVM.comments) { comment in
                HStack {
                    Text(comment.author.username)
                        .font(Font.custom("Roboto-Bold", size: 15))
                    +
                    Text(" ")
                    +
                    Text(comment.message)
                        .font(Font.custom("Rotobo-Regular", size: 15))
                }
                .foregroundColor(Color(uiColor: UIColor(
                    red: 0,
                    green: 0,
                    blue: 0,
                    alpha: 1.0)))
            }
        }
        .padding(.top, 9)
        .onAppear(perform: {
            if !commentModel.content.isEmpty {
                commentVM.comments = commentModel.content
                commentVM.canLoadMoreComments = !commentModel.last
            }
        })
    }
}
