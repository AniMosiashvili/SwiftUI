//
//  FruitDetailView.swift
//  Task_3
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct FruitDetailView: View {
    let fruitName: String
    @State private var showInfoSheet = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.green, Color.white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 25) {
                Text(fruitName)
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.black)

                Button(action: {
                    showInfoSheet = true
                }) {
                    Text("Show More Info")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green)
                        .cornerRadius(12)
                        .shadow(radius: 5)
                }
                .padding(.horizontal, 40)
            }
            .padding()
        }
        .sheet(isPresented: $showInfoSheet) {
            FruitInfoSheet(fruitName: fruitName)
        }
    }
}

