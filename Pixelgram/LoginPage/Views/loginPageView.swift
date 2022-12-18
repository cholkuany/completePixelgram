//
//  ContentView.swift
//  Login
//
//  Created by Owner on 2022-08-18.
//

import SwiftUI

struct loginPageView: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var showingLoginScreen = false
    @State private var errorMessage = ""
    @State private var isPresentedRegister = false
    @State private var isPresentedLogin = false
    @State private var isLoggedIn = false
    @State private var backToLanding = false
    
    
    @EnvironmentObject var authenticationVM : AuthenticationViewModel
    
    var body: some View {
        if backToLanding {
            withAnimation {
                LandingPageView()
                    .transition(AnyTransition.opacity.combined(with: .slide))
                    .animation(.linear(duration: 0.15))
            }
        }
        else {
            NavigationView {
                VStack{
                    
                    HStack {
                        Image("AppIcon")
                            .resizable()
                            .frame(width: 54.92, height: 53, alignment: .center)
                        
                        Divider()
                            .frame(width: 0.96, height: 45, alignment: .center)
                            .background(Color(uiColor: UIColor(
                                red: 42 / 255,
                                green: 42 / 255,
                                blue: 42 / 255,
                                alpha: 1.0)))
                            .padding()
                        Text("Login")
                            .frame(width: 125.38, height:46, alignment: .center)
                            .font(Font.custom("StyleScript-Regular", size: 45))
                    }
                    
                    TextFieldView(textInput: $Username, placeholder: "Enter Username", isPassword: false)
                        .accessibilityIdentifier("Username_Login")
                    TextFieldView(textInput: $Password, placeholder: "Enter Password", isPassword: true)
                        .accessibilityIdentifier("Password_Login")
                    Text(errorMessage)
                        .foregroundColor(.red)
                    
                    HStack {
                        Button("Register"){
                            isPresentedRegister.toggle()
                        }
                        .accessibilityIdentifier("Register_Login")
                        .foregroundColor(.white)
                        .frame(width:118, height: 45)
                        
                        .background(Color(UIColor(
                            
                            red: 81/255,
                            
                            green: 151/255,
                            
                            blue: 233/255,
                            
                            alpha: 1.0)))
                        .cornerRadius(3)
                        .padding(.trailing)
                        
                        .fullScreenCover(isPresented:$isPresentedRegister, content:RegisterView.init)
                        
                        .padding()
                        
                        Button("Login"){
                            if InputValidation.isFieldEmptyOrBlank(input: Username) {
                                errorMessage = "Username can't be blank."
                            } else {
                                if InputValidation.isFieldEmptyOrBlank(input: Password) {
                                    errorMessage = "Password can't be blank."
                                } else {
                            authenticationVM.postRequest(username:Username, password: Password)
                            {
                                token,status in
                                if status != 200
                                {
                                    errorMessage = token
                                }
                                else
                                {
                                    isPresentedLogin.toggle()
                                }
                            }
                        }
                    }
                }
                        .accessibilityIdentifier("Login")
                        .foregroundColor(.white)
                        .frame(width:118, height: 45)
                        .background(Color(UIColor(
                            
                            red: 81/255,
                            
                            green: 151/255,
                            
                            blue: 233/255,
                            
                            alpha: 1.0)))
                        .cornerRadius(3)
                        .padding(.leading)
                        .fullScreenCover(isPresented:$isPresentedLogin, content: LandingPageView.init)
                    }
                }
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Button(
                            action: {
                                backToLanding.toggle()
                            },
                            label: {
                                Image(systemName: "chevron.backward")
                                Text("Home")
                            }
                        )
                        .accessibilityIdentifier("backToLandingPage")
                    }
                }
            }
        }
    }
}

struct loginPageView_Previews: PreviewProvider {
    static var previews: some View {
        loginPageView()
    }
}

