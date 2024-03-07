//
//  pythonTestingApp.swift
//  pythonTestingApp
//
//  Created by Seth Lenhof on 3/7/24.
//

import SwiftUI


@main
struct pythonTestingApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            
        }
    }
}
