//
//  Repository.swift
//  Quiz
//
//  Created by Ilhan ODUN on 6.11.2023.
//

import Foundation

final class Repository {
    
    private let network = NetworkAPI()
    
    private var queuedStats: Set<StatQuestion> = []
    
    // MARK: - Local
    
    func retrieveNewQuestions(level: QuestionLevel) async throws -> [Question] {
        try await syncAnswers()
        return try await network.retrieveNewQuestions(level: level.rawValue)
    }
    
    // MARK: - Network
    
    func retrieveStats() async throws -> Stats {
        try await syncAnswers()
        return try await network.retrieveStats()
    }
    
    func syncAnswers() async throws {
        try await network.syncAnswers(queuedStats)
        queuedStats = []
    }
    
    
    
}
