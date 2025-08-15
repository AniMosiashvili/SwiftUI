//
//  ContentView.swift
//  Task_4
//
//  Created by Anna Harris on 09.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome :)")
                    .font(.title)
                    .padding()
            }
            .navigationTitle("My App")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.gray.opacity(0.7), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
