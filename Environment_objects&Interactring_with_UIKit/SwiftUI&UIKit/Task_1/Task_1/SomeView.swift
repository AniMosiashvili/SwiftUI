//
//  SomeView.swift
//  Task_1
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct SomeView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello from SwiftUI 🤓")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.purple)
            
            Button(action: {
                dismiss()
            }) {
                Text("Dismiss")
                    .font(.title2)
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 40)
        }
        .padding()
    }
}
