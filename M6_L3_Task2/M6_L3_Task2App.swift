//
//  M6_L3_Task2App.swift
//  M6_L3_Task2
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

@main
struct M6_L3_Task2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(UserSetting())
        }
    }
}
