//
//  ContentView.swift
//  Task_7
//
//  Created by Anna Harris on 06.08.25.
//

import SwiftUI

struct ContentView: View {
    @State private var users: [UserProfile] = []

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(users) { user in
                        ProfileDetailView(user: user)
                    }
                }
                .padding(.top)
            }
            .background(LinearGradient(
                gradient: Gradient(colors: [.purple.opacity(0.4), .blue.opacity(0.7)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
        }
        .foregroundColor(.white)
        .onAppear {
            loadUsers()
            
        }
    }

    private func loadUsers() {
        if let url = Bundle.main.url(forResource: "users", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                users = try JSONDecoder().decode([UserProfile].self, from: data)
            } catch {
                print("❌ Failed to load users: \(error)")
            }
        } else {
            print("❌ users.json not found")
        }
    }
}

#Preview {
    ContentView()
}


