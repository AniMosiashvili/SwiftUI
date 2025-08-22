//
//  IncrementCounterView.swift
//  Task_1
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct IncrementCounterView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.counterValue += 1
        }) {
            Text("➕ Increment")
                .font(.title3)
                .bold()
                .padding()
                .frame(maxWidth: .infinity)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 5)
        }
    }
}
