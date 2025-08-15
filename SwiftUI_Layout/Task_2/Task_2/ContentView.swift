//
//  ContentView.swift
//  Task_2
//
//  Created by Anna Harris on 04.08.25.
//

import SwiftUI

struct ContentView: View {
    let names = ["Ani", "Vato", "Sani", "Sofia", "George"]
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple.opacity(0.3), Color.purple]),
                startPoint: .bottomTrailing,
                endPoint: .topLeading
            )
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Tap a Name")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 40)
                
                List {
                    ForEach(names, id: \.self) { name in
                        HStack {
                            Text(name)
                                .font(.headline)
                                .foregroundColor(.primary)
                            Spacer()
                            Button("Tap") {
                                print("Tapped: \(name)")
                            }
                            .buttonStyle(PlainButtonStyle())
                            .padding(.horizontal, 16)
                            .padding(.vertical, 6)
                            .background(Color.white)
                            .foregroundColor(.purple)
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.1), radius: 3, x: 1, y: 1)
                        }
                        .padding(.vertical, 6)
                        .listRowBackground(Color.white.opacity(0.3))
                        .contentShape(Rectangle())
                    }
                }
                .listStyle(.insetGrouped)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .padding(.horizontal)
                .scrollContentBackground(.hidden)
            }
        }
    }
}
