//
//  SecondView.swift
//  Task_1
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.purple, Color.pink.opacity(0.8)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            Text("Hello, SwiftUI Navigation!")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .cornerRadius(10)
                .shadow(radius: 5)
        }
    }
}
