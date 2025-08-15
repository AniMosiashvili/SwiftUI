//
//  SettingsView.swift
//  Task_2
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct SettingsView: View {
    @Binding var path: [Screen]

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.black, Color.gray],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("⚙️ Settings Page")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button("Go to Profile") {
                    path.append(.profile)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.white.opacity(0.3))
                .cornerRadius(12)
            }
        }
    }
}
