//
//  ContentView.swift
//  Task_3
//
//  Created by Anna Harris on 05.08.25.
//

import SwiftUI

struct ContentView: View {
    let profiles: [Profile] = [
        Profile(imageName: "placeholder", name: "Anna Harris", subtitle: "iOS Developer"),
        Profile(imageName: "placeholder", name: "George Martin", subtitle: "UI Designer"),
        Profile(imageName: "placeholder", name: "Sofia Lopez", subtitle: "QA Engineer"),
        Profile(imageName: "placeholder", name: "Vato Smith", subtitle: "Project Manager"),
        Profile(imageName: "placeholder", name: "Sani Rose", subtitle: "Backend Engineer"),
        Profile(imageName: "placeholder", name: "Ani Mosi", subtitle: "iOS Developer"),
        Profile(imageName: "placeholder", name: "Vladislav Kov", subtitle: "Data Scientist")
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.purple.opacity(0.3), Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 16) {
                    Text("Team Profiles")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 20)
                    
                    ForEach(profiles) { profile in
                        HStack(spacing: 16) {
                            Image(profile.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                .shadow(radius: 4)
                            
                            VStack(alignment: .leading, spacing: 6) {
                                Text(profile.name)
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text(profile.subtitle)
                                    .font(.subheadline)
                                    .foregroundColor(.white.opacity(0.8))
                            }
                            
                            Spacer()
                        }
                        .padding()
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(16)
                        .shadow(radius: 4)
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
