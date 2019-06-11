//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Oliver Cripps on 10/06/2019.
//  Copyright © 2019 Oliver Cripps. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {

    let game = Game()
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIsBuzzMoveisWrong() {
        game.score = 7
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIsFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIsFizzBuzzMoveWrong() {
        game.score = 12
        let response = game.play(move: .fizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIsNumberMoveRight() {
        game.score = 6
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIsNumberMoveWrong() {
        game.score = 4
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testIfMoveRightScoreIncremented() {
        game.score = 1
        _ = game.play(move: .number)
        XCTAssertEqual(game.score, 2)
    }
    
    func testPlayShouldRetrunIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }

}
