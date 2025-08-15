//
//  ContentView.swift
//  Task_4
//
//  Created by Anna Harris on 06.08.25.
//

import SwiftUI

struct CustomToggle: ToggleStyle {
    @Binding var isDarkMode: Bool

    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
                .font(.headline)
                .foregroundColor(isDarkMode ? .white : .black)

            Spacer()

            RoundedRectangle(cornerRadius: 20)
                .fill(configuration.isOn ? Color.green : Color.gray)
                .frame(width: 50, height: 30)
                .overlay(
                    Circle()
                        .fill(Color.white)
                        .padding(3)
                        .offset(x: configuration.isOn ? 10 : -10)
                        .animation(.easeInOut(duration: 0.25), value: configuration.isOn)
                )
                .onTapGesture {
                    configuration.isOn.toggle()
                }
        }
        .padding(.horizontal)
    }
}

struct ContentView: View {
    @State private var isDarkMode = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: isDarkMode
                                   ? [Color.black, Color.purple.opacity(0.9)]
                                   : [Color.purple.opacity(0.9), Color.purple.opacity(0.2)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 40) {
                Text("Switch App Theme")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(isDarkMode ? .white : .black)

                Toggle("Dark Mode", isOn: $isDarkMode)
                    .toggleStyle(CustomToggle(isDarkMode: $isDarkMode))
                    .padding(.horizontal, 90)
            }
            .padding(.bottom, 40)
        }
    }
}

#Preview {
    ContentView()
}
