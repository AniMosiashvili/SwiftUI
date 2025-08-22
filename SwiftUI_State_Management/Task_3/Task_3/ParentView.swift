//
//  ParentView.swift
//  Task_3
//
//  Created by Anna Harris on 12.08.25.
//

import SwiftUI

struct ParentView: View {
    @State private var isOn = false
    @State private var showChild = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.black.opacity(0.9), Color.purple.opacity(0.85)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("Parent State: \(isOn ? "ON" : "OFF")")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(isOn ? Color.green : Color.black)
                            .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
                    )
                    .animation(.easeInOut, value: isOn)
                
                Button("Show Child View") {
                    showChild = true
                }
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(Color.purple)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.3), radius: 6, x: 0, y: 4)
            }
            .padding()
        }
        .sheet(isPresented: $showChild) {
            ChildToggleView(isOn: $isOn)
        }
    }
}

#Preview {
    ParentView()
}

