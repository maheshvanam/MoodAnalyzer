//
//  MoodAnalyzerTests.swift
//  MoodAnalyzerTests
//
//  Created by admin on 21/05/20.
//  Copyright © 2020 admin. All rights reserved.
//

import XCTest
@testable import MoodAnalyzer

class MoodAnalyzerTests: XCTestCase {
    func test_givenAMessage_whenGivenSadMood_ShouldReturnSAD(){
        let analyzer=Analyzer(message: "i am in Sad Mood")
        let mood = analyzer.analyseMood()
        XCTAssertEqual("SAD", mood)
    }
    
    func test_givenAMessage_whenGivenAnyMood_ShouldReturnHappy(){
        let analyzer=Analyzer(message: "i am in Any Mood")
        let mood = analyzer.analyseMood()
        XCTAssertEqual("HAPPY", mood)
    }
    
    func test_givenAMessage_whenGivenAHappyMood_ShouldReturnSAD(){
        let analyzer=Analyzer(message: "i am in Happy Mood")
        let mood = analyzer.analyseMood()
        XCTAssertEqual("SAD", mood)
    }
}
