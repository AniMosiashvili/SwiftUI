//
//  ContentView.swift
//  Task_6
//
//  Created by Anna Harris on 06.08.25.
//

import SwiftUI

struct GroceryItem: Identifiable {
    let id = UUID()
    let name: String
    var isEnabled: Bool
}

struct ContentView: View {
    @State private var groceries: [GroceryItem] = [
        GroceryItem(name: "Pomegranate", isEnabled: false),
        GroceryItem(name: "Strawberries", isEnabled: true),
        GroceryItem(name: "Eggs", isEnabled: false),
        GroceryItem(name: "Bananas", isEnabled: true),
        GroceryItem(name: "Apples", isEnabled: false),
        GroceryItem(name: "Milk", isEnabled: true),
        GroceryItem(name: "Matsoni", isEnabled: false),
        GroceryItem(name: "Chicken Breast", isEnabled: true),
        GroceryItem(name: "Tomatoes", isEnabled: false),
        GroceryItem(name: "Cheddar Cheese", isEnabled: true),
        GroceryItem(name: "Spinach", isEnabled: false),
        GroceryItem(name: "Orange Juice", isEnabled: true),
        GroceryItem(name: "Potatoes", isEnabled: false),
        GroceryItem(name: "Yogurt", isEnabled: true),
        GroceryItem(name: "Carrots", isEnabled: false)
    ]

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.green.opacity(0.5), .white]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                List {
                    ForEach($groceries) { $item in
                        HStack {
                            Text(item.name)
                                .font(.system(size: 18, weight: .medium))
                            Spacer()
                            Toggle("", isOn: $item.isEnabled)
                                .labelsHidden()
                        }
                        .padding(.vertical, 6)
                        .listRowBackground(Color.clear)
                    }
                }
                .scrollContentBackground(.hidden)
                .listStyle(InsetGroupedListStyle())
            }
            .navigationTitle("Grocery List")
        }
    }
}

#Preview {
    ContentView()
}

