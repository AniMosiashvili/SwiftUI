//
//  ProfileDetailView.swift
//  Task_7
//
//  Created by Anna Harris on 06.08.25.
//

import SwiftUI

struct ProfileDetailView: View {
    let user: UserProfile

    var body: some View {
        VStack(spacing: 12) {
            ZStack {
                Circle()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [.purple, .blue]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
                    .frame(width: 100, height: 100)
                    .shadow(radius: 8)

                Text(user.initials)
                    .font(.title)
                    .foregroundColor(.white)

                if user.isPremium {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Text("⭐ Premium")
                                .font(.caption2)
                                .padding(5)
                                .background(Color.yellow.opacity(0.7))
                                .clipShape(Capsule())
                                .shadow(radius: 2)
                                .padding(6)
                        }
                    }
                }
            }

            VStack(spacing: 6) {
                HStack {
                    Text("Name:")
                        .bold()
                    Spacer()
                    Text(user.name)
                }

                HStack {
                    Text("Age:")
                        .bold()
                    Spacer()
                    Text("\(user.age)")
                }

                HStack {
                    Text("Location:")
                        .bold()
                    Spacer()
                    Text(user.location)
                }
            }
            .padding()
            .background(LinearGradient(
                gradient: Gradient(colors: [.purple.opacity(0.4), .blue.opacity(0.7)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ))
            .cornerRadius(10)
            .shadow(radius: 2)
        }
        .padding()
        .background(Color.white.opacity(0.2))
        .cornerRadius(20)
    }
}

private extension UserProfile {
    var initials: String {
        let parts = name.split(separator: " ")
        return parts.prefix(2).compactMap { $0.first }.map { String($0) }.joined()
    }
}
