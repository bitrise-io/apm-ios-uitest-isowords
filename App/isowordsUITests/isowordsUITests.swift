//
//  isowordsUITests.swift
//  isowordsUITests
//
//  Created by Shams Ahmed on 09/07/2021.
//

import XCTest

class isowordsUITests: XCTestCase {

    // MARK: - Setup
    
    override func setUpWithError() throws {
        continueAfterFailure = true

    }

    override func tearDownWithError() throws {
        
    }

    // MARK: - Tests
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        sleep(15)
        
        XCTAssertTrue(app.state == .runningForeground)
        
        app.terminate()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
