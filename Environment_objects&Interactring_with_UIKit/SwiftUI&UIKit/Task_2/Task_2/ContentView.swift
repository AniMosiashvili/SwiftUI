//
//  ContentView.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 100) {
            
            Text("SwiftUI + UIKit")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.blue)
                .multilineTextAlignment(.center)
                .padding(.top, 80)
            
            HStack(spacing: 20) {
                
                Text("SwiftUI Text")
                    .font(.title2)
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(15)
                
                UIKitViewWrapper()
                    .frame(width: 200, height: 90)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
            }
            .padding(.horizontal, 20)
            
            Spacer()
        }
        .background(
            LinearGradient(
                colors: [Color.black, Color.blue.opacity(0.6)],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
        )
    }
}


#Preview {
    ContentView()
}
