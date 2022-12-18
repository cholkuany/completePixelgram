//
//  headerLandingPage.swift
//  cloneinsta
//
//  Created by Owner on 2022-08-17.
//

import SwiftUI

struct headerLandingPage_Previews: PreviewProvider {
    static var previews: some View {
        Header(isLandingPage: true)
            .environmentObject(AuthenticationViewModel())
            .environmentObject(RegistrationViewModel())
    }
}

struct Header: View {
    @State private var showCreatePost = false
    let isLandingPage: Bool
    @State private var isPresented_Login = false
    @State private var isPresented_LandingPage = false
    @EnvironmentObject var authenticationVM : AuthenticationViewModel
    @EnvironmentObject var registerVM: RegistrationViewModel
    
    var body: some View {

        HStack{
            HStack{
              
                Image("AppIcon")
                    .resizable()
                    .frame(width: 29, height:29)
                Divider()
                    .frame(width: 0.52, height: 25.34)
                    .foregroundColor(Color(uiColor: UIColor(
                        red: 42 / 255,
                        green: 42 / 255,
                        blue: 42 / 255,
                        alpha: 1.0)))
                Text("Pixelgram")
                    .frame(width: 86, height: 25)
                    .font(Font.custom("StyleScript-Regular", size: 25))
            }
            
            Spacer()
            HStack(spacing:20.0){
                
                NavigationLink(destination: NewPostPageView(), isActive: $showCreatePost){EmptyView()}
                
                if authenticationVM.isLoggedIn || registerVM.successfullRegistation{
                Button{
                    showCreatePost = true
                } label: {
                    Image(systemName: "plus.app")
                        .resizable()
                        .frame(width: 30, height:30)
                        .foregroundColor(.black)
                        
                }
                .accessibilityIdentifier("NewPostIcon")
                }
        
                Menu{

                    Button(action: {
                        toggle()
                    }) {
                        if (!authenticationVM.isLoggedIn && !registerVM.successfullRegistation){
                            Text("Login")
                        } else{
                            Text("Logout")
                        }
                    }

                    } label: {

                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30, height:30)
                        .foregroundColor(.black)
                    }
                    .fullScreenCover(
                        isPresented:$isPresented_Login,
                        content:loginPageView.init)
                    .fullScreenCover(
                        isPresented: $isPresented_LandingPage,
                        content: LandingPageView.init)
                    .accessibilityIdentifier("UserIcon")
                        
            }
            
        }
        .padding(.horizontal,15)
        .padding(.vertical,3)
                                
    }
    func toggle(){

        if authenticationVM.isLoggedIn || registerVM.successfullRegistation {
            //Logout
            let logoutVM = LogoutViewModel()
            let refresh_token = LogoutViewModel.getRefreshToken()
            logoutVM.logout(refresh_token: refresh_token)
            self.authenticationVM.isLoggedIn = false
            self.authenticationVM.refresh_token = nil
            self.registerVM.successfullRegistation = false
            self.registerVM.refresh_token = nil
            
            if !isLandingPage {
                self.isPresented_LandingPage.toggle()
            }
            
        } else {
            //Login
            isPresented_Login.toggle()
            }
        }
}

