//
//  LoginPageUITests.swift
//  PixelgramUITests
//
//  Created by MAC on 2022-08-23.
//

import XCTest

class LoginPageUITests: XCTestCase {

    var measureOption = XCTMeasureOptions()
    
    func testLoginUI_Inputs_LoginSuccess(){
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
        
        XCTAssert(app.waitForExistence(timeout: 1.0))
    }
    
    func testLoginUI_InputsLoginFail(){
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews.buttons["Login"].tap()
        
        
        let UsernameTextField = app.textFields["Username_Login"]
        UsernameTextField.tap()
        UsernameTextField.typeText("ruthful1")
        
        let PasswordTextField = app.secureTextFields["Password_Login"]
        PasswordTextField.tap()
        PasswordTextField.typeText("RuthfulPass1")
        
        app.buttons["Login"].tap()
        
        
        XCTAssert(app.waitForExistence(timeout: 1.0))
    }
    
    
    func testUserUI_Icon_UserIcon(){
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews/*@START_MENU_TOKEN@*/.buttons["Login"]/*[[".cells.buttons[\"Login\"]",".buttons[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
 
        XCTAssert(app.waitForExistence(timeout: 1.0))
       
    }
    
    func testLoginUI_Inputs_UserIconButton_Performance(){
        measure (options: measureOption, block: {
            measureOption.iterationCount = 1
            testUserUI_Icon_UserIcon()
        })
    }
    
    
    
    func testLoginUI_Inputs_LoginButton_Performance(){
        measure (options: measureOption, block: {
            measureOption.iterationCount = 1
            testLoginUI_Inputs_LoginSuccess()
        })
    }
}
