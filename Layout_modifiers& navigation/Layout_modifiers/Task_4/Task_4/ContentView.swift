//
//  ContentView.swift
//  Task_4
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Circle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(x: -10, y: -20)
            
            Rectangle()
                .fill(Color.blue.opacity(0.4))
                .frame(width: 150, height: 80)
                .offset(x: 15, y: 80)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}

