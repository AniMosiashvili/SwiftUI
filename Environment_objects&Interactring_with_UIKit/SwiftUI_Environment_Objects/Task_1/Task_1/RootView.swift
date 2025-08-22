//
//  RootView.swift
//  Task_1
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black.opacity(0.8), Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Shared Counter")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 4)
                
                CounterDisplayView()
                IncrementCounterView()
                DecrementCounterView()
            }
            .padding()
        }
    }
}
