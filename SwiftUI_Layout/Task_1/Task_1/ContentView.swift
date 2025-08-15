//
//  ContentView.swift
//  Task_1
//
//  Created by Anna Harris on 04.08.25.
//

import SwiftUI

struct ContentView: View {
    @State private var showGreeting = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple.opacity(0.3), Color.purple]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 30) {
                Toggle("Show Greeting", isOn: $showGreeting)
                    .padding()
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
                    .font(.headline)
                    .foregroundColor(.white)

                Text("Hello, SwiftUI!")
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .opacity(showGreeting ? 1 : 0)
                    .animation(.easeInOut, value: showGreeting)
            }
        }
    }
}

#Preview {
    ContentView()
}
