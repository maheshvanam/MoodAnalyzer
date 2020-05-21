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
        do{
        let analyzer=Analyzer(message: "i am in Sad Mood")
        let mood = try analyzer.analyseMood()
        XCTAssertEqual("SAD", mood)
        }
        catch{
            print(error)
        }
            
    }
    
    func test_givenAMessage_whenGivenAnyMood_ShouldReturnHappy(){
        do{
            let analyzer=Analyzer(message: "i am in Any Mood")
            let mood = try analyzer.analyseMood()
            XCTAssertEqual("HAPPY", mood)
        }
        catch{
            print(error)
        }
    }
    
    func test_givenAMessage_whenGivenAHappyMood_ShouldReturnSAD(){
        do{
            let analyzer=Analyzer(message: "i am in Happy Mood")
            let mood = try analyzer.analyseMood()
            XCTAssertEqual("SAD", mood)
        }
        catch{
            print(error)
        }
        
    }
    func test_givenAMessage_whenGivenANilMood_ShouldReturnCustomError(){
        do{
            let analyzer = Analyzer(message: nil)
            let mood = try analyzer.analyseMood()
            XCTAssertEqual("HAPPY", mood)
        }
        catch{
            XCTAssertEqual("nilMessage", "\(error)")
        }
    }
}
