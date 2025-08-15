//
//  ContentView.swift
//  Task_5
//
//  Created by Anna Harris on 06.08.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                CardView(title: "My Profile") {
                    HStack(spacing: 15) {
                        Image("placeholder")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())

                        VStack(alignment: .leading, spacing: 5) {
                            Text("Anna Harris")
                                .font(.headline)
                            Text("@anna_harris97")
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        Button(action: {}) {
                            Text("Edit")
                                .font(.subheadline)
                                .padding(.horizontal, 12)
                                .padding(.vertical, 6)
                                .background(Color.purple.opacity(0.2))
                                .cornerRadius(8)
                        }
                    }
                }

                CardView(title: "People you may know") {
                    VStack(spacing: 15) {
                        ForEach(["Sofia", "Sani", "Vato"], id: \.self) { name in
                            HStack {
                                Image("placeholder")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())

                                Text(name)
                                    .font(.subheadline)
                                    .bold()

                                Spacer()

                                Button(action: {}) {
                                    Text("Follow")
                                        .font(.caption)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color.purple.opacity(0.2))
                                        .cornerRadius(8)
                                }
                            }
                        }
                    }
                }

                CardView(title: "Post by Anna") {
                    VStack(alignment: .leading, spacing: 10) {
                        HStack(spacing: 10) {
                            Image("placeholder")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())

                            Text("Anna")
                                .font(.subheadline)
                                .bold()

                            Spacer()
                        }

                        Image("post1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 250)
                            .clipped()
                            .cornerRadius(10)

                        Text("Exploring the mountains 🌄 #nature #freedom")
                            .font(.subheadline)
                    }
                }
            }
            .padding(.top)
        }
        .background(Color(.secondarySystemBackground).ignoresSafeArea())
    }
}

#Preview {
    ContentView()
}
