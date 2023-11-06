//
//  Question.swift
//  Quiz
//
//  Created by Ilhan ODUN on 6.11.2023.
//

import Foundation

enum QuestionLevel: Int {
    case beginner
    case intermadiate
    case advanced
    case random
}


struct Question {
    let id: String
    let level: QuestionLevel
    let text: String?
    let imageURL: URL?
    let answers: [String]
    let correctAnswerIndex: Int
    let explanation: String?
}
