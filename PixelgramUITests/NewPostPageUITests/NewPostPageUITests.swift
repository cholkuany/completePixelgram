//
//  NewPostPageUITests.swift
//  PixelgramUITests
//
//  Created by M_2217299 on 2022-09-01.
//

import XCTest

class NewPostPageUITests: XCTestCase {
    func testNewPostNoDesc(){
        
                
        let app = XCUIApplication()
        app.launch()
        
        
        let userButton = app.buttons["UserIcon"]
        userButton.tap()
        app.collectionViews.buttons["Login"].tap()
        
        
        let UsernameTextField = app.textFields["Username_Login"]
        UsernameTextField.tap()
        UsernameTextField.typeText("ruthful")
        
        let PasswordTextField = app.secureTextFields["Password_Login"]
        PasswordTextField.tap()
        PasswordTextField.typeText("RuthfulPass")
        
        app.buttons["Login"].tap()
        
        app.navigationBars["_TtGC7SwiftUI19UIHosting"]/*@START_MENU_TOKEN@*/.buttons["NewPostIcon"]/*[[".buttons[\"Add To Home Screen\"]",".buttons[\"NewPostIcon\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    
        app.buttons["Create Post"].tap()
        let errorText = app.staticTexts["* Description is  required"]

        XCTAssertTrue(errorText.label == "* Description is  required")
        

    }
    

    
    func testNewPostNoImage(){
                
        let app = XCUIApplication()
        app.launch()
        
        let userButton = app.buttons["UserIcon"]
        userButton.tap()
        app.collectionViews.buttons["Login"].tap()
        
        
        let UsernameTextField = app.textFields["Username_Login"]
        UsernameTextField.tap()
        UsernameTextField.typeText("ruthful")
        
        let PasswordTextField = app.secureTextFields["Password_Login"]
        PasswordTextField.tap()
        PasswordTextField.typeText("RuthfulPass")
        
        app.buttons["Login"].tap()
        
        app.navigationBars["_TtGC7SwiftUI19UIHosting"]/*@START_MENU_TOKEN@*/.buttons["NewPostIcon"]/*[[".buttons[\"Add To Home Screen\"]",".buttons[\"NewPostIcon\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let descriptionStaticText = app.textFields["Description"]
        descriptionStaticText.tap()
        descriptionStaticText.typeText("This is a cool picture\n")
        

        app.buttons["Create Post"].tap()
        let errorText = app.staticTexts["* Image is  required"]

        XCTAssertTrue(errorText.label == "* Image is  required")
        

    }
    
    
    func testLogin(){
        
        let app = XCUIApplication()
        let usernameLoginTextField = app/*@START_MENU_TOKEN@*/.textFields["Username_Login"]/*[[".textFields[\"Enter Username\"]",".textFields[\"Username_Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        usernameLoginTextField.tap()
        usernameLoginTextField.tap()
        app/*@START_MENU_TOKEN@*/.secureTextFields["Password_Login"]/*[[".secureTextFields[\"Enter Password\"]",".secureTextFields[\"Password_Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Login"].tap()
        app.navigationBars["_TtGC7SwiftUI19UIHosting"]/*@START_MENU_TOKEN@*/.buttons["NewPostIcon"]/*[[".buttons[\"Add To Home Screen\"]",".buttons[\"NewPostIcon\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                
                        
    }
}
