//
//  LandingPageUITest.swift
//  PixelgramUITests
//
//  Created by Xavier on 8/22/22.
//

import XCTest

class LandingPageUITest: XCTestCase {
    //Case: Swipe up the scroll view on the landing page
    func testLandingPageScrollView() throws {
        let app = XCUIApplication()
        app.launch()
        
        let scrollView = app.scrollViews["landingPage_ScrollView"].firstMatch
        scrollView.swipeUp()
    }
    
    //Case: Infinite Scroll
    func testLandingPageInfiniteScroll() throws {
        let app = XCUIApplication()
        app.launch()
        
        let scrollView = app.scrollViews["landingPage_ScrollView"].firstMatch
        for _ in 0...5 {
            scrollView.swipeUp()
        }
    }

    //Case: Tap Like Button
    func testTapLikeButton() throws {
        let app = XCUIApplication()
        app.launch()

        let scrollView = app.scrollViews["landingPage_ScrollView"].firstMatch

        let likeButton = app.buttons["LikeButton_LandingPage"].firstMatch
        likeButton.tap()
    }

    //Case: Tap Meatballs Menu Button
    func testMeatballsButton() throws {
        let app = XCUIApplication()
        app.launch()

        let scrollView = app.scrollViews["landingPage_ScrollView"].firstMatch
        let meatballsMenuButton = app.buttons["MeatballsMenu_LandingPage"].firstMatch
        meatballsMenuButton.tap()
    }

    //Case: Tap Show More Button in Description
    func testShowMoreButton_Description() throws {
        let app = XCUIApplication()
        app.launch()

        let scrollView = app.scrollViews["landingPage_ScrollView"].firstMatch

        while !app.buttons["ShowMoreDescription_LandingPage"].exists {
            scrollView.swipeUp()
        }
        let showMoreButton = app.buttons["ShowMoreDescription_LandingPage"].firstMatch
        showMoreButton.tap()
    }
}
