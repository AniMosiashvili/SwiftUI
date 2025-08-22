//
//  ContentView.swift
//  Task_7
//
//  Created by Anna Harris on 21.08.25.
//

import SwiftUI

@Observable
class CounterModel {
    var count: Int = 0
}

struct ContentView: View {
    @State private var counter = CounterModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.gray.opacity(0.85), .indigo.opacity(0.85)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 40) {
                    Text("Shared Counter")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .padding(.top, 40)
                    
                    HStack(spacing: 20) {
                        VStack {
                            Text("Counter 1")
                                .font(.headline)
                                .foregroundColor(.white.opacity(0.9))
                            CounterView(counter: $counter)
                        }
                        
                        VStack {
                            Text("Counter 2")
                                .font(.headline)
                                .foregroundColor(.white.opacity(0.9))
                            CounterView(counter: $counter)
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct CounterView: View {
    @Binding var counter: CounterModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(counter.count)")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.indigo)
            
            Button(action: {
                counter.count += 1
            }) {
                Text("Increment")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 140)
                    .padding()
                    .background(.green)
                    .cornerRadius(15)
            }
        }
        .padding()
        .frame(width: 160)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .shadow(radius: 8)
    }
}


#Preview {
    ContentView()
}
