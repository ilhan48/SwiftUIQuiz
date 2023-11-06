//
//  StatQuestion.swift
//  Quiz
//
//  Created by Ilhan ODUN on 6.11.2023.
//

import Foundation

struct StatQuestion: Hashable {
    let questionId: String
    let level: QuestionLevel
    let isCorrect: Bool
    
    static func ==(lhs: StatQuestion, rhs: StatQuestion) -> Bool {
        lhs.questionId == rhs.questionId
    }
}
