//
//  NewPostPageView.swift
//  Pixelgram
//
//  Created by admin on 8/29/22.
//

import SwiftUI

struct NewPostPageView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var authentication : AuthenticationViewModel
    @StateObject private var postViewModel = PostViewModel()
    @State private var uploaded : Bool = false
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var showingPicker = false
    @State private var postMsg: String = ""
    @State private var selected: Bool = false
    @State private var showImgErr: Bool = false
    @State private var showDescErr: Bool = false
    @State private var cancel: Bool = false
    var body: some View {
        VStack{
            HStack{
                Image("Logo")
                    .padding(.leading, 52)
                Image("Rect")
                    .padding(.leading, 32)
                Text("Create Post")
                    .padding(.leading, 15.34)
                    .font(Font.custom("StyleScript-Regular", size: 50))
                    .shadow(color: Color(uiColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0.25)), radius: 4, x: 0, y: 4)
                    
                Spacer()
            }
            .padding(.top, 106)
            HStack{
                Button{
                    showingPicker = true
                    selected.toggle()
                } label: {
                    Text("Choose Image")
                        .font(Font.custom("Roboto-Regular", size: 18))
                        
                        .foregroundColor(.white)
                        .frame(width: 169, height: 45)
                        .background(Color("btn1"))
                        .cornerRadius(3)
                        
                }
                .padding(.leading, 14)
                .padding(.top, 55)
                if(selected){
                    Image(systemName: "checkmark")
                        .frame(width: 50, height: 50)
                        .foregroundColor(.green)
                        .offset(x: -10, y: 30)
                }
                Spacer()
            }
            if showImgErr{
                Text("* Image is  required")
                    .font(Font.custom("Roboto-Regular", size: 15))
                    .foregroundColor(Color("Error"))
                    .padding(.top, 12)
                    .padding(.trailing, 230)
            }
            
            
            TextField("Description", text: $postMsg)
                .frame(width: 362,height: 243, alignment: .top)
                .font(.body)
                .background(Color("BG"))
                .border(Color("Border"))
                .cornerRadius(3)
                .font(.body)
                .background(Color("BG"))
                .cornerRadius(3)

            
            if showDescErr{
                Text("* Description is  required")
                    .font(Font.custom("Roboto-Regular", size: 15))
                    .foregroundColor(Color("Error"))
                    .padding(.trailing, 195)
                    .padding(.bottom, 20)
            }
            
            HStack(spacing: 34){
                Button{
                    cancel = true
                } label: {
                    Text("Cancel")
                        .font(Font.custom("Roboto-Regular", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 156, height: 45)
                        .background(Color("btn2"))
                        .cornerRadius(3)
                }
                Button{
                    if selected && !postMsg.isEmpty{
                        guard let token = authentication.authResponse?.access_token else {return}
                        guard let inputImage = inputImage else {return}
                        guard let imageData = inputImage.jpegData(compressionQuality: 0.5) else {return}
                        
                        postViewModel.postComment(picture: imageData, message: postMsg, token: token)
                       
                        
                    } else {
                        if !selected{
                            showImgErr.toggle()
                        }
                        if postMsg.isEmpty{
                            showDescErr.toggle()
                        }
                    }
                } label: {
                    Text("Create Post")
                        .font(Font.custom("Roboto-Regular", size: 18))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 45)
                        .background(Color("btn1"))
                        .cornerRadius(3)
                }
                .fullScreenCover(isPresented:$postViewModel.uploaded, content: LandingPageView.init)
            }
            
            Spacer()
        }
        .sheet(isPresented: $showingPicker) {
            ImagePicker(inputImage: $inputImage)
        }
        .onChange(of: inputImage){_ in loadImage()}
        .onChange(of: cancel){_ in dismiss()}
    }
    func loadImage(){
       
    }
}

struct NewPostPageView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostPageView()
    }
}
