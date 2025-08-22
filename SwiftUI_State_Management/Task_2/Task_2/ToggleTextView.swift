//
//  ToggleTextView.swift
//  Task_2
//
//  Created by Anna Harris on 12.08.25.
//

import SwiftUI

struct ToggleTextView: View {
    @State private var isOn = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.purple.opacity(0.8), Color.black.opacity(0.8)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Toggle(isOn: $isOn) {
                    Text("Show Greeting")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .toggleStyle(SwitchToggleStyle(tint: .purple))
                .padding(.horizontal, 40)
                
                Text("Hello, SwiftUI!")
                    .font(.system(size: 36, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.purple)
                            .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 4)
                    )
                    .opacity(isOn ? 1 : 0)
                    .scaleEffect(isOn ? 1 : 0.8)
                    .animation(.spring(response: 0.4, dampingFraction: 0.6), value: isOn)
            }
            .padding()
        }
    }
}

#Preview {
    ToggleTextView()
}
