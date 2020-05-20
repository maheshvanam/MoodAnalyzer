//
//  Analyzer.swift
//  MoodAnalyzer
//
//  Created by admin on 21/05/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Analyzer{
    func analyseMood(message:String)->String{
        if message.contains("Sad"){
            return "SAD"
        }
        return "HAPPY"
    }
}
