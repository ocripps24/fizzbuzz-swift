//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Oliver Cripps on 11/06/2019.
//  Copyright © 2019 Oliver Cripps. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testTapNumberButtonIncrementsScore() {
        XCUIApplication().buttons["0"].tap()
        let newScore = XCUIApplication().buttons["1"].label
        XCTAssertEqual(newScore, "1")
    }

}
