//
//  ContentView.swift
//  Task_2
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

enum Screen: Hashable {
    case home
    case profile
    case settings
}

struct ContentView: View {
    @State private var path: [Screen] = []

    var body: some View {
        NavigationStack(path: $path) {
            HomeView(path: $path)
                .navigationDestination(for: Screen.self) { screen in
                    switch screen {
                    case .home:
                        HomeView(path: $path)
                    case .profile:
                        ProfileView(path: $path)
                            .navigationBarBackButtonHidden(true)
                    case .settings:
                        SettingsView(path: $path)
                            .navigationBarBackButtonHidden(true)
                    }
                }
        }
    }
}


#Preview {
    ContentView()
}
