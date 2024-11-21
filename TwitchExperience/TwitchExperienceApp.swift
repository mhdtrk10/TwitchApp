//
//  TwitchExperienceApp.swift
//  TwitchExperience
//
//  Created by Mehdi Oturak on 14.11.2024.
//

import SwiftUI

@main
struct TwitchExperienceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
