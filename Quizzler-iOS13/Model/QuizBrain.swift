//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Julie Lu on 14/2/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var questionNumber = 0

    let quiz = [
        ["Four + Two is equal to Six","True"],
        ["The first man in space was bald", "False"],
        ["Chickens have combs on their head", "True"],
        ["Crickets chirp by rubbing their legs together", "True"]
    ]
    
    func checkAnswer (_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber][1] {
            //User gets it right
            return true
        }
        else {
            //User gets it wrong
            return false
        }
    }
    
    func getQuestionText () -> String {
        return quiz[questionNumber][0]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber)/Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else {
            questionNumber = 0
        }
    }
    


}

