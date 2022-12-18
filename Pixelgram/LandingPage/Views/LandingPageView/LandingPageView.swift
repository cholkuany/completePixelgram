//
//  LandingPageView.swift
//  Pixelgram
//
//  Created by admin on 8/16/22.
//

import SwiftUI

struct LandingPageView: View {
    @StateObject var auth = Authentication()
    @EnvironmentObject var authentication: AuthenticationViewModel
    @StateObject private var landingPageVM = LandingPageViewModel()
    var body: some View {
        NavigationView {
            VStack{
            ScrollView{
                if landingPageVM.loaded{
                    LazyVStack{
                        ForEach(landingPageVM.posts){post in
                            PostView(post: post)
                            .onAppear{
                                landingPageVM.loadMoreContentIfNeeded(currentItem: post)
                            }
                        }
                    }
                }
            }
            .onAppear {
                landingPageVM.getPosts()
            }
            .accessibilityIdentifier("landingPage_ScrollView")
            }
            .toolbar {
                Header(isLandingPage: true)
                    .frame(width: 400, height: 20)
            }
        }
        .environmentObject(landingPageVM)
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
            .environmentObject(AuthenticationViewModel())
    }
}
