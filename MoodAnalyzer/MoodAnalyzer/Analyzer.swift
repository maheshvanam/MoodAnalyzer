//
//  Analyzer.swift
//  MoodAnalyzer
//
//  Created by admin on 21/05/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation

class Analyzer {
    
    var message : String?
    
    init() {
        message = nil
    }
    
    init(message : String?) {
        self.message=message
    }
    
    func analyseMood() throws ->String {
        
        if message == nil{
            throw MoodAnalyzerError.nilMessage
        }
        if message!.isEmpty{
            throw MoodAnalyzerError.emptyMessage
        }
        if message!.contains("Sad"){
            return "SAD"
        }
        if message!.contains("Happy"){
            return "HAPPY"
        }
        return "HAPPY"
    }
}
