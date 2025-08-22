//
//  ContentView.swift
//  Task_4
//
//  Created by Anna Harris on 21.08.25.
//

import SwiftUI

struct ContentView: View {
    @State private var profile = UserProfile()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.blue.opacity(0.7), .purple.opacity(0.8)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 30) {
                        
                        Text("Edit Profile")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .padding(.top, 40)
                        
                        VStack(spacing: 20) {
                            CustomTextField(title: "Name", text: $profile.name, icon: "person.fill")
                            CustomTextField(title: "Email", text: $profile.email, icon: "envelope.fill", keyboard: .emailAddress)
                        }
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(20)
                        .shadow(radius: 10)
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Live Preview")
                                .font(.headline)
                                .foregroundColor(.secondary)
                            
                            Text("👤 \(profile.name)")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("📧 \(profile.email)")
                                .font(.title3)
                                .foregroundColor(.secondary)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.white.opacity(0.9))
                        .cornerRadius(20)
                        .shadow(radius: 8)
                        .padding(.horizontal)
                        
                        Button(action: {
                            print("changes saved")
                        }) {
                            Text("Save Changes")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(
                                    LinearGradient(
                                        colors: [.purple, .blue],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(15)
                                .shadow(color: .purple.opacity(0.6), radius: 8, x: 0, y: 4)
                        }
                        .padding(.horizontal)
                        
                        Spacer(minLength: 40)
                    }
                }
            }
        }
    }
}

struct CustomTextField: View {
    var title: String
    @Binding var text: String
    var icon: String
    var keyboard: UIKeyboardType = .default
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.blue)
            TextField(title, text: $text)
                .keyboardType(keyboard)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.none)
        }
        .padding()
        .background(Color.white.opacity(0.9))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}


#Preview {
    ContentView()
}
