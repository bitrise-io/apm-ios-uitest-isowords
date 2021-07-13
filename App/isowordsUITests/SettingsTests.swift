//
//  SettingsTests.swift
//  isowordsUITests
//
//  Created by Shams Ahmed on 12/07/2021.
//

import XCTest

extension isowordsUITests {
    
    // MARK: - Tests
    
    func testSettings() throws {
        let app = XCUIApplication()
        app.launch()
        
        sleep(5)
        
        if app.buttons["Skip"].exists {
            skipOnboarding()
        }
        
        sleep(1)
        
        app.buttons["settings"].tap()
        
        sleep(5)
        
        app.swipeDown()
        app.swipeUp()
        app.swipeUp()
        
        sleep(1)
        
        app.buttons["Notifications"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Left"].tap()
        
        app.buttons["Sounds"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Left"].tap()
        
        app.buttons["Appearance"].tap()
        sleep(1)
        app.buttons["Dark"].tap()
        sleep(1)
        app.buttons["Light"].tap()
        sleep(1)
        app.buttons["Dark"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Left"].tap()
        
        app.buttons["Accessibility"].tap()
        
        sleep(UInt32.random(in: 1...10))
        
        app.buttons["Left"].tap()
        
        app.buttons["Stats"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Left"].tap()
        sleep(1)
        app.buttons["Left"].tap()
        
        app.swipeDown()
        app.swipeDown()
        
        app.swipeUp()
    }
}
