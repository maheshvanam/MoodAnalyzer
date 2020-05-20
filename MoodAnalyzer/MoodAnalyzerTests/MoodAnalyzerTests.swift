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
        let analyzer=Analyzer()
        let mood = analyzer.analyseMood(message: "i am in Sad Mood")
        XCTAssertEqual("SAD", mood)
    }
}
