//
//  QuizApp.swift
//  Quiz
//
//  Created by Ilhan ODUN on 6.11.2023.
//

import SwiftUI

@main
struct QuizApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
