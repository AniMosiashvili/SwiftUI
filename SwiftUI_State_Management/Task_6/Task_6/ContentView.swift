//
//  ContentView.swift
//  Task_6
//
//  Created by Anna Harris on 21.08.25.
//

import SwiftUI

struct Setting: Identifiable {
    let id = UUID()
    var name: String
    var isOn: Bool
}

struct ContentView: View {
    @State private var settings: [Setting] = [
        Setting(name: "Notifications", isOn: true),
        Setting(name: "Dark Mode", isOn: false),
        Setting(name: "Location Access", isOn: true),
        Setting(name: "Photos", isOn: false),
        Setting(name: "Background app refresh", isOn: true),
        Setting(name: "Mobile Data", isOn: true)
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.indigo.opacity(0.85), .purple.opacity(0.85)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 20) {
                        
                        Text("Settings")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .padding(.top, 30)
                        
                        ForEach($settings) { $setting in
                            HStack {
                                Text(setting.name)
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                
                                Spacer()
                                
                                Toggle("", isOn: $setting.isOn)
                                    .labelsHidden()
                                    .tint(.indigo)
                            }
                            .padding()
                            .background(.ultraThinMaterial)
                            .cornerRadius(15)
                            .shadow(radius: 6)
                            .padding(.horizontal)
                        }
                        
                        Spacer(minLength: 40)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
