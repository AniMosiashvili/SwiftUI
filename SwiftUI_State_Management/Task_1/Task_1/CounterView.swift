//
//  CounterView.swift
//  Task_1
//
//  Created by Anna Harris on 12.08.25.
//

import SwiftUI

struct CounterView: View {
    @State private var count = 0
    @State private var animateScale = false
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color.pink.opacity(0.3), Color.purple.opacity(0.8)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("\(count)")
                    .font(.system(size: 80, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .scaleEffect(animateScale ? 1.2 : 1.0)
                    .animation(.spring(response: 0.3, dampingFraction: 0.4), value: count)
                
                Button(action: {
                    count += 1
                    animateScale = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                        animateScale = false
                    }
                }) {
                    Text("+1")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 15)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.3), radius: 8, x: 0, y: 4)
                }
            }
            .padding()
        }
    }
}

#Preview {
    CounterView()
}
