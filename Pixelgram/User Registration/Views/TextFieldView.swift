//
//  TextFieldView.swift
//  Pixelgram
//
//  Created by Xavier on 8/19/22.
//

import SwiftUI

struct TextFieldView: View {
    @State var textInput: Binding<String>
    let placeholder: String
    let isPassword: Bool
    var body: some View {
        Group {
            if !isPassword {
                TextField(
                    placeholder,
                    text: textInput
                )
            } else {
                SecureField(
                    placeholder,
                    text: textInput
                )
            }
        }
        .textContentType(.oneTimeCode)
        .font(Font.custom("Roboto-Regular", size: 15))
        .frame(width:358, height:57)
        .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 6))
        .background(Color(uiColor:UIColor(red:250/255, green: 250/255, blue: 250/255, alpha:1.0)))
        .cornerRadius(3)
        .overlay(
            RoundedRectangle(cornerRadius: 3)
                .stroke(
                    Color(uiColor: UIColor(
                        red: 219 / 255,
                        green: 219 / 255,
                        blue: 219 / 255, alpha: 1.0)), lineWidth: 1))
        //.accessibilityIdentifier(placeholder)
        .autocapitalization(.none)
        .disableAutocorrection(true)
        .padding(.top, 29)
    }
}
