//
//  OnboardingTests.swift
//  isowordsUITests
//
//  Created by Shams Ahmed on 12/07/2021.
//

import XCTest

extension isowordsUITests {
 
    // MARK: - Tests
    
    func testOnboarding_intro() throws {
        let app = XCUIApplication()
        
        if app.state == .notRunning {
            app.launch()
        }
        
        sleep(5)
        
        // next
        let button = app.buttons.element(boundBy: 1)
        
        // next
        button.tap()
        sleep(2)
        
        //next
        button.tap()
        sleep(2)
        
        // press letter
        app.otherElements.element(boundBy: 2).tap()
        sleep(1)
        
        skipOnboarding()
        
        // scroll down
        app.scrollViews.firstMatch.swipeUp()
        app.scrollViews.firstMatch.swipeUp()
        
        sleep(15)
    }
    
    
    // MARK: - Helper
    
    func skipOnboarding() {
        let app = XCUIApplication()
        
        sleep(2)
        
        // skip
        app.buttons["Skip"].tap()
        
        sleep(5)
        
        // confirm - Yes, skip
        app.buttons["Yes, skip"].tap()
        
        // random press
        app.otherElements.firstMatch.tap()
        
        // Get started
        app.buttons.firstMatch.tap()
        
        sleep(2)
    }
}
