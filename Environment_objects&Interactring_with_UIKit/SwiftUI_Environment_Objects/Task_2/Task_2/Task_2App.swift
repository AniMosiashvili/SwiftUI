//
//  Task_2App.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

@main
struct Task_2App: App {
    @StateObject private var taskManager = TaskManager()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(taskManager)
        }
    }
}
