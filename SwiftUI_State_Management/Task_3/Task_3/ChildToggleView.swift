//
//  ChildToggleView.swift
//  Task_3
//
//  Created by Anna Harris on 12.08.25.
//

import SwiftUI

struct ChildToggleView: View {
    @Binding var isOn: Bool
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.black.opacity(0.9), Color.purple.opacity(0.85)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Toggle("Child Toggle", isOn: $isOn)
                    .toggleStyle(SwitchToggleStyle(tint: Color.purple))
                    .padding(.horizontal, 40)
                    .foregroundColor(.white)
                
                Button("Dismiss") {
                    dismiss()
                }
                .font(.headline)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
            }
            .padding()
        }
    }
}

