//
//  NetworkAPI.swift
//  Quiz
//
//  Created by Ilhan ODUN on 6.11.2023.
//

import Foundation

final class NetworkAPI {
    func retrieveNewQuestions(level: Int) async throws -> [Question] {
        return[]
    }
    
    func retrieveStats() async throws -> Stats {
        return Stats(correctMap: [:], wrongMap: [:])
    }
    
    func syncAnswers(_ answers: Set<StatQuestion>) async throws {
        
    }
}
