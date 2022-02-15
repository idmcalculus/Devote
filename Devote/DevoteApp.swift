//
//  DevoteApp.swift
//  Devote
//
//  Created by IGE DAMILOLA MICHAEL on 15/02/2022.
//

import SwiftUI

@main
struct DevoteApp: App {
    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
