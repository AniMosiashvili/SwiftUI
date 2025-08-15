//
//  ContentView.swift
//  Task_3
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple.opacity(0.4)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            HStack(alignment: .center, spacing: 40) {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }
            .padding()
            .background(Color.white.opacity(0.4))
        }
    }
}

#Preview {
    ContentView()
}
