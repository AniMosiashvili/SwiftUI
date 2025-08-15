//
//  FruitInfoSheet.swift
//  Task_3
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct FruitInfoSheet: View {
    let fruitName: String
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.green, Color.white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("\(fruitName) Info")
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.black)

                Text(info(for: fruitName))
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.black.opacity(0.7))
                    .font(.body)

                Button(action: {
                    dismiss()
                }) {
                    Text("Close")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.red)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                .padding(.horizontal, 40)
            }
            .padding()
        }
    }

    private func info(for fruit: String) -> String {
        switch fruit {
        case "Apple":
            return "Random text about apples"
        case "Banana":
            return "Random text about bananas"
        case "Cherry":
            return "Random text about cherries"
        default:
            return "No info available"
        }
    }
}

