//
//  GameTests.swift
//  isowordsUITests
//
//  Created by Shams Ahmed on 12/07/2021.
//

import XCTest

extension isowordsUITests {
    
    // MARK: - Tests
    
    func testPlayGame() throws {
        let app = XCUIApplication()
        
        if app.state == .notRunning {
            app.launch()
        }
        
        sleep(5)
        
        if app.buttons["Skip"].exists {
            skipOnboarding()
        }
        
        app.swipeUp()
        app.swipeUp()
        
        app.buttons["Solo"].tap()
        
        sleep(1)
        
        app.buttons["Unlimited"].tap()
        
        sleep(UInt32.random(in: 30...60))
        
        print(1)
        app.buttons["more"].tap()
        
        sleep(1)
        
        app.buttons["End game"].tap()
        
        sleep(UInt32.random(in: 30...60))
        
    }
}
