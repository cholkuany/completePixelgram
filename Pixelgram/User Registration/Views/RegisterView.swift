//
//  RegisterView.swift
//  Pixelgram
//
//  Created by Xavier on 8/16/22.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    @State var password: String = ""
    @State var passwordcnf: String = ""
    
    @State var errorMsg = ""
    
    @EnvironmentObject private var registerVM: RegistrationViewModel
    
    @State var isPresented_LoginPage: Bool = false
    @State var isPresented_LandingPage: Bool = false
    
    var body: some View {
        if isPresented_LoginPage {
            withAnimation {
                loginPageView()
                    .transition(AnyTransition.opacity.combined(with: .slide))
                    .animation(.linear(duration: 0.15))
            }
        }
        else {
            NavigationView {
                VStack {
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
                        Text("Register")
                            .frame(width: 125.38, height:46, alignment: .center)
                            .font(Font.custom("StyleScript-Regular", size: 45))
                    }
                    
                    VStack {
                        TextFieldView(textInput: $username, placeholder: "Enter Username", isPassword: false)
                            .accessibilityIdentifier("Username_Register")
                        TextFieldView(textInput: $password, placeholder: "Enter Password", isPassword: true)
                            .accessibilityIdentifier("Password_Register")
                        TextFieldView(textInput: $passwordcnf, placeholder: "Confirm Password", isPassword: true)
                            .accessibilityIdentifier("PasswordCnf_Register")
                    }
                    
                    Text(errorMsg)
                        .padding(.bottom)
                        .foregroundColor(.red)
                    Button(action: {
                        if InputValidation.isFieldEmptyOrBlank(input: username) {
                            errorMsg = "Username can't be blank."
                        } else {
                            if InputValidation.isFieldEmptyOrBlank(input: password) || InputValidation.isFieldEmptyOrBlank(input: passwordcnf) {
                                errorMsg = "Password can't be blank."
                            } else {
                                if !InputValidation.areInputsSame(inputs: [password, passwordcnf]) {
                                    errorMsg = "Please make sure your passwords match."
                                } else {
                                    errorMsg = ""
                                    //MARK: API CALL TO REGISTER THE USER
                                    registerVM.register(username: username, password: password) { status, message in
                                        if status == 200 {
                                            //trigger present landing page
                                            isPresented_LandingPage.toggle()
                                        } else {
                                            errorMsg = message
                                        }
                                    }
                                }
                            }
                        }
                    }) {
                        Text("Register")
                            .foregroundColor(.white)
                            .frame(width:118, height: 45)
                            .background(Color(UIColor(
                                
                                red: 81/255,
                                
                                green: 151/255,
                                
                                blue: 233/255,
                                
                                alpha: 1.0)))
                            .cornerRadius(3)
                            .padding(.leading)
                    }
                    .fullScreenCover(isPresented: $isPresented_LandingPage, content: LandingPageView.init)
                    .accessibilityIdentifier("Register_Register")
                }
                .toolbar {
                    ToolbarItem (placement: .navigationBarLeading) {
                        Button(
                            action: {
                                isPresented_LoginPage.toggle()
                            },
                            label: {
                                Image(systemName: "chevron.backward")
                                Text("Login")
                            }
                        )
                        .accessibilityIdentifier("backToLoginPage")
                    }
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(RegistrationViewModel())
    }
}
