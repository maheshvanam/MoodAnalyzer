//
//  Analyzer.swift
//  MoodAnalyzer
//
//  Created by admin on 21/05/20.
//  Copyright © 2020 admin. All rights reserved.
//

import Foundation
class Analyzer{
    var message:String
    init(message:String){
        self.message=message
    }
    func analyseMood()->String{
        if message.contains("Sad") || message.contains("Happy"){
            return "SAD"
        }
        return "HAPPY"
    }
}
