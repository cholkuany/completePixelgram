//
//  LandingPagePublicCommentUITest.swift
//  PixelgramUITests
//
//  Created by Xavier on 8/24/22.
//

import XCTest

class LandingPagePublicCommentUITest: XCTestCase {

    //Case: Tap View More Comments Button
    func testShowMoreButton_Description() throws {
        let app = XCUIApplication()
        app.launch()

        let scrollView = app.scrollViews["landingPage_ScrollView"].firstMatch

        while !app.buttons["ShowMoreCommentButton_LandingPage"].exists {
            scrollView.swipeUp()
        }
        let showMoreButton = app.buttons["ShowMoreCommentButton_LandingPage"].firstMatch
        showMoreButton.tap()
    }
}
