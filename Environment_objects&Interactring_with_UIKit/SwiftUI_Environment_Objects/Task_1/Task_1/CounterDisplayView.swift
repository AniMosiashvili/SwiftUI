//
//  CounterDisplayView.swift
//  Task_1
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct CounterDisplayView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        Text("Counter Value: \(counter.counterValue)")
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.black.opacity(0.3))
            .cornerRadius(15)
            .shadow(radius: 5)
    }
}
