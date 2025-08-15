//
//  ProfileView.swift
//  Task_2
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ProfileView: View {
    @Binding var path: [Screen]

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.gray, Color.black],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Profile Page")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                Button("Go to Home") {
                    path = []
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
