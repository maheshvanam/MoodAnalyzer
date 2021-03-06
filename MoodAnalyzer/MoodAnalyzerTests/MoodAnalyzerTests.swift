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
    
    func test_givenAMessage_whenGivenSadMood_ShouldReturnSAD() throws {
        let analyzer=Analyzer(message: "i am in Sad Mood")
        let mood = try analyzer.analyseMood()
        XCTAssertEqual("SAD", mood)
    }
    
    func test_givenAMessage_whenGivenAnyMood_ShouldReturnHappy() throws {
        let analyzer=Analyzer(message: "i am in Any Mood")
        let mood = try analyzer.analyseMood()
        XCTAssertEqual("HAPPY", mood)
    }
    
    func test_givenAMessage_whenGivenAHappyMood_ShouldReturnSAD() throws {
        let analyzer=Analyzer(message: "i am in Happy Mood")
        let mood = try analyzer.analyseMood()
        XCTAssertEqual("HAPPY", mood)
    }
    
    func test_givenAMessage_whenGivenNilMood_ShouldReturnCustomException(){
        let analyzer = Analyzer(message: nil)
        
        XCTAssertThrowsError( try analyzer.analyseMood()){
            error in XCTAssertEqual(error as! MoodAnalyzerError, MoodAnalyzerError.nilMessage)
        }
    }
    
    func test_givenAMessage_whenGivenEmptyMood_ShouldReturnCustomExceptin(){
        let analyzer = Analyzer(message: "")
        
        XCTAssertThrowsError( try analyzer.analyseMood()){
            error in XCTAssertEqual(error as! MoodAnalyzerError, MoodAnalyzerError.emptyMessage)
        }
    }
}
