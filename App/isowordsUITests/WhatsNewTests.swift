//
//  WhatsNewTests.swift
//  isowordsUITests
//
//  Created by Shams Ahmed on 12/07/2021.
//

import XCTest

extension isowordsUITests {
 
    // MARK: - Tests
    
    func testWhatsNew() throws {
        let app = XCUIApplication()
        app.launch()
        
        
        sleep(5)
        
        skipOnboarding()
        
        sleep(5)
        
        app.buttons["Cube"].tap()
        
        sleep(5)
        
        // random
        app.scrollViews.firstMatch.swipeUp()
        app.scrollViews.firstMatch.swipeUp()
        app.scrollViews.firstMatch.swipeDown()
        app.scrollViews.firstMatch.swipeUp()
        
        
        // dismiss
        app.scrollViews.firstMatch.swipeDown(velocity: .fast)
        
        sleep(15)
    }
}
