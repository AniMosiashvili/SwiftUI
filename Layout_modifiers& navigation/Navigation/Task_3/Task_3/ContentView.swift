//
//  ContentView.swift
//  Task_3
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ContentView: View {
    let fruits = ["Apple", "Banana", "Cherry"]

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color.green, Color.white],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()

                List(fruits, id: \.self) { fruit in
                    NavigationLink(value: fruit) {
                        HStack {
                            Text(fruit)
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        .padding(.vertical, 8)
                    }
                    .listRowBackground(Color.white.opacity(0.2))
                }
                .scrollContentBackground(.hidden)
                .navigationTitle("List of items")
                .navigationDestination(for: String.self) { fruitName in
                    FruitDetailView(fruitName: fruitName)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
