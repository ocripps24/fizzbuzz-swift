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
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScoreTwice() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        let fizzButton = app/*@START_MENU_TOKEN@*/.buttons["fizzButton"]/*[[".buttons[\"champagne\"]",".buttons[\"fizzButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }

}
