//
//  DecrementCounterView.swift
//  Task_1
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct DecrementCounterView: View {
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        Button(action: {
            counter.counterValue -= 1
        }) {
            Text("➖ Decrement")
                .font(.title3)
                .bold()
                .padding()
                .frame(maxWidth: .infinity)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 5)
        }
    }
}
