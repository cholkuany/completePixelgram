//
//  PostView.swift
//  Pixelgram
//
//  Created by admin on 8/16/22.
//

import SwiftUI

struct PostView: View {
    @State var liked: Bool = false
    @State var long: Bool = false
    
    @StateObject private var landingPageVM = LandingPageViewModel()
    
    @EnvironmentObject var authenticationVM : AuthenticationViewModel
    @EnvironmentObject var registerVM: RegistrationViewModel
    
    var post: Post
    
    var body: some View {
        VStack{
            HStack{
                AsyncImage(
                    url: URL(string: post.author.profileImageUrl ?? ""),
                    content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 40, maxHeight: 40)
                            .padding(.leading, 7)
                            .clipShape(Circle())
                    },
                    placeholder: {
                        Circle()
                            .fill(.gray)
                            .frame(width: 40, height: 40)
                            .offset(x: 7)
                    }
                )
                
                Text(post.author.username)
                    .font(Font.custom("Roboto-Bold", size: 15))
                    .offset(x: 10)
                
                Spacer()
                Button{
                    print("toggled")
                } label:{
                    HStack(spacing: 2){
                        Ellipse()
                            .frame(width: 4, height: 4)
                        Ellipse()
                            .frame(width: 4, height: 4)
                        Ellipse()
                            .frame(width: 4, height: 4)
                    }
                    .frame(width: 32, height: 26)
                    .background(.white)
                    .padding(.trailing, 20)
                }.foregroundColor(.black)
                    .accessibilityIdentifier("MeatballsMenu_LandingPage")
                
            }
            ZStack {
                Rectangle()
                    .background(.black)
                    .frame(width: UIScreen.main.bounds.width, height: 390)
                AsyncImage(
                    url: URL(string: post.imageUrl ?? ""),
                    content: { image in
                        image.resizable()
                            .scaledToFill()
                            .frame(width: 391, height: 390)
                            .clipped()
                    },
                    placeholder: {
                        Rectangle()
                            .fill(.black)
                            .frame(width: 391, height: 390)
                    }
                )
                .background(.white)
            }
            
            HStack{
                if (authenticationVM.isLoggedIn || registerVM.successfullRegistation) {
                    Button{
                            liked.toggle()
                    } label: {
                        Image(systemName: !liked ? "heart.fill" : "heart")
                            .frame(width: 21.8, height: 20)
                            .foregroundColor(!liked ? .red : .black)
                    }.padding(.leading, 12)
                        .accessibilityIdentifier("LikeButton_LandingPage")
                } else {
                    Image(systemName: !liked ? "heart.fill" : "heart")
                        .frame(width: 21.8, height: 20)
                        .foregroundColor(!liked ? .red : .black)
                        .padding(.leading, 12)
                }

                Text("12 likes")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.gray)
                
                Text("\(post.comments.totalElements) " + (post.comments.totalElements == 1 ? "comment" : "comments"))
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.gray)
                Spacer()
            }
            if long{
                HStack{
                    Text(post.author.username)
                        .font(Font.custom("Roboto-Bold", size: 15))
                    + Text(" " + (post.message ?? ""))
                        .font(Font.custom("Roboto-Regular", size: 15))
                    Button{
                        long = false
                    } label: {
                        Text("more")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundColor(.gray)
                            .offset(x: -8, y:8)
                    }
                    .accessibilityIdentifier("ShowMoreDescription_LandingPage")
                }
                .lineLimit(2)
                .padding(.leading, 12)
            } else {
                HStack{
                    Text(post.author.username)
                        .font(Font.custom("Roboto-Bold", size: 15))
                    + Text(" " + (post.message ?? ""))
                        .font(Font.custom("Roboto-Regular", size: 15))
                    
                    
                    
                    Spacer()
                }
                
                .padding(.leading, 12)
            }
            
            
            HStack {
                CommentView(commentModel: post.comments, postID: post.id)
                    .padding(.leading, 12)
                Spacer()
            }
            
            
            Rectangle()
                .fill(.gray)
                .frame(height: 1)
            
        }
        .onAppear{
            if(post.message?.count ?? 0 > 90){
                long = true
            }
        }
        
    }
}
