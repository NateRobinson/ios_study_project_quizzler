//
//  Question.swift
//  Quizzler
//
//  Created by  NateRobinson on 2019/3/29.
//  Copyright © 2019  NateRobinson. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
    
}
