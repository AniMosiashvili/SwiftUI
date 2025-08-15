//
//  ContentView.swift
//  Task_6
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct CustomButtonModifier: ViewModifier {
    var isEnabled: Bool
    
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(isEnabled ? .white : .gray.opacity(0.7))
            .padding(.vertical, 14)
            .padding(.horizontal, 28)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .fill(
                        LinearGradient(
                            colors: isEnabled
                                ? [Color.purple, Color.purple]
                                : [Color.gray.opacity(0.5), Color.gray.opacity(0.3)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
            )
            .shadow(color: isEnabled ? Color.purple.opacity(0.5) : Color.clear, radius: 8, x: 0, y: 4)
            .opacity(isEnabled ? 1 : 0.7)
            .animation(.easeInOut(duration: 0.3), value: isEnabled)
    }
}

extension View {
    func customButtonStyle(isEnabled: Bool) -> some View {
        self.modifier(CustomButtonModifier(isEnabled: isEnabled))
    }
}

struct ContentView: View {
    @State private var isEnabled = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.black, Color.purple.opacity(0.8)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Button("Press Me") {
                    print("Button tapped")
                }
                .customButtonStyle(isEnabled: isEnabled)
                .disabled(!isEnabled)
                
                Toggle("Enable Button", isOn: $isEnabled)
                    .toggleStyle(SwitchToggleStyle(tint: Color.purple))
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(.horizontal, 40)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


