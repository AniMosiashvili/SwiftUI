//
//  ContentView.swift
//  Task_2
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 150, height: 100)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 150, height: 100)
                .padding()
        }
        .background(Color.gray.opacity(0.5))
    }
}

#Preview {
    ContentView()
}
