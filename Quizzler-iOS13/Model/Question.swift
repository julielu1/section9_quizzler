//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Julie Lu on 14/2/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QUestion {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
