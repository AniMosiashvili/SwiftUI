//
//  ContentView.swift
//  Task_1
//
//  Created by Anna Harris on 09.08.25.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            
            Text("SwiftUI Layout Modifiers")
            //padding all sides
                .padding(16)
            
            // padding on specific edges
//                .padding(.horizontal, 32)
//                .padding(.vertical, 12)
        
                .background(Color.purple.opacity(0.3))
                .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

