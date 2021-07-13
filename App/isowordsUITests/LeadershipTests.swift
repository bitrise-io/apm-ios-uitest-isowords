//
//  LeadershipTests.swift
//  isowordsUITests
//
//  Created by Shams Ahmed on 12/07/2021.
//

import XCTest

extension isowordsUITests {
    
    // MARK: - Tests
    
    func testLeaderboard() {
        let app = XCUIApplication()
        
        if app.state == .notRunning {
            app.launch()
        }
        
        skipOnboarding()
        
        sleep(5)
        app.swipeUp()
        app.swipeUp()
        app.swipeUp()
        
        sleep(2)
        
        app.buttons["View all"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Vocab"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Games"].tap()
        
        sleep(UInt32.random(in: 5...30))
        
        app.buttons["Left"].tap()
        
        app.swipeDown()
        app.swipeDown()
        app.swipeUp()
    }
}
