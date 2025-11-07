//
//  LocalFixApp.swift
//  LocalFix
//
//  Created by Michal Petráš on 07/11/2025.
//

import SwiftUI
import CoreData

@main
struct LocalFixApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            NavBarClient()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
