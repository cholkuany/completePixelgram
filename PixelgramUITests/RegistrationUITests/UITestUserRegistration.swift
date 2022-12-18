//
//  UITestUserRegistration.swift
//  PixelgramUITests
//
//  Created by Xavier on 8/19/22.
//

import XCTest

class UITestUserRegistration: XCTestCase {

    //Case: Tapping & Filling the Text Field "Enter Username" & Secure Fields "Enter Password" & "Confirm Password"
    func testRegisterView_FieldInputs() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews.buttons["Login"].tap()
        app.buttons["Register_Login"].tap()
        
        let enterUsernameTextField = app.textFields["Username_Register"]
        enterUsernameTextField.tap()
        enterUsernameTextField.typeText("test")
        
        
        let enterPasswordSecureTextField = app.secureTextFields["Password_Register"]
        enterPasswordSecureTextField.tap()
        enterPasswordSecureTextField.typeText("test123")
        
        let confirmPasswordSecureTextField = app.secureTextFields["PasswordCnf_Register"]
        confirmPasswordSecureTextField.tap()
        confirmPasswordSecureTextField.typeText("test123")
        
    }
    
    func testRegisterView_PasswordsDontMatch() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews/*@START_MENU_TOKEN@*/.buttons["Login"]/*[[".cells.buttons[\"Login\"]",".buttons[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Register_Login"].tap()
        
        
        let enterUsernameTextField = app.textFields["Username_Register"]
        enterUsernameTextField.tap()
        enterUsernameTextField.typeText("test")
        
        let enterPasswordSecureTextField = app.secureTextFields["Password_Register"]
        enterPasswordSecureTextField.tap()
        enterPasswordSecureTextField.typeText("test123")
        
        let confirmPasswordSecureTextField = app.secureTextFields["PasswordCnf_Register"]
        confirmPasswordSecureTextField.tap()
        confirmPasswordSecureTextField.typeText("test1234")
        
        let errorText = app.staticTexts["Please make sure your passwords match."]
        
        let button_Register = app.buttons["Register_Register"]
        button_Register.tap()
        
        XCTAssertTrue(errorText.label == "Please make sure your passwords match.")
    }
    
    func testRegisterView_NoUsernameError(){
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews.buttons["Login"].tap()
        app.buttons["Register_Login"].tap()
        
        let errorText = app.staticTexts["Username can't be blank."]
        
        let button_Register = app.buttons["Register_Register"]
        button_Register.tap()
        
        XCTAssertTrue(errorText.label == "Username can't be blank.")
    }
    
    func testRegisterView_UsernameButNoPasswordError() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews/*@START_MENU_TOKEN@*/.buttons["Login"]/*[[".cells.buttons[\"Login\"]",".buttons[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Register_Login"].tap()
        
        let enterUsernameTextField = app.textFields["Username_Register"]
        enterUsernameTextField.tap()
        enterUsernameTextField.typeText("test")
        
        let errorText = app.staticTexts["Password can't be blank."]
        
        let button_Register = app.buttons["Register_Register"]
        button_Register.tap()
        
        XCTAssertTrue(errorText.label == "Password can't be blank.")
    }
    
    func testRegisterView_UsernamePasswordButNoConfirmPasswordError() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews.buttons["Login"].tap()
        app.buttons["Register_Login"].tap()
        
        let enterUsernameTextField = app.textFields["Username_Register"]
        enterUsernameTextField.tap()
        enterUsernameTextField.typeText("test")
        
        let enterPasswordSecureTextField = app.secureTextFields["Password_Register"]
        enterPasswordSecureTextField.tap()
        enterPasswordSecureTextField.typeText("test123")
        
        let errorText = app.staticTexts["Password can't be blank."]
        
        let button_Register = app.buttons["Register_Register"]
        button_Register.tap()
        
        XCTAssertTrue(errorText.label == "Password can't be blank.")
    }
    
    //Case: Tapping the Button "Register"
    func testRegisterView_ButtonTap() {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews.buttons["Login"].tap()
        app.buttons["Register_Login"].tap()
        
        let button_Register = app.buttons["Register_Register"]
        button_Register.tap()
        
    }
    
    //Tapping the Back Button
    func testBackButton_ButtonTap(){
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["UserIcon"].tap()
        app.collectionViews/*@START_MENU_TOKEN@*/.buttons["Login"]/*[[".cells.buttons[\"Login\"]",".buttons[\"Login\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.buttons["Register_Login"].tap()
        
        let backButton = app.buttons["backToLoginPage"]
        backButton.tap()
        
        XCTAssert(app.waitForExistence(timeout: 5.0))
    }
    
}
