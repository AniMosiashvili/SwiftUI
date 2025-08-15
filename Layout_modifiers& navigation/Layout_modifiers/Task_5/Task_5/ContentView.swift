//
//  ContentView.swift
//  Task_5
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("SwiftUI is amazing!")
            .padding()
            .background(Rectangle().fill(Color.gray))
            .overlay(
                Circle()
                    .fill(Color.white.opacity(0.5))
            )
            .clipShape(Circle())
    }
}

#Preview {
    ContentView()
}

