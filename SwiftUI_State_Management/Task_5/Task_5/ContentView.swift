//
//  ContentView.swift
//  Task_5
//
//  Created by Anna Harris on 21.08.25.
//

import SwiftUI

@Observable
class FormModel {
    var username: String = ""
}

struct ContentView: View {
    @State private var form = FormModel()
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.indigo.opacity(0.8), .purple.opacity(0.8)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("User Form")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding(.top, 40)
                
                VStack(spacing: 20) {
                    CustomTextField(title: "Username", text: $form.username, icon: "person.fill")
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .shadow(radius: 10)
                .padding(.horizontal)
                
                Button(action: {
                    print("Submitted username: \(form.username)")
                }) {
                    Text("Submit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            LinearGradient(
                                colors: form.username.isEmpty
                                    ? [.gray, .gray]
                                    : [.purple, .blue],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(15)
                        .shadow(color: form.username.isEmpty ? .clear : .purple.opacity(0.6),
                                radius: 8, x: 0, y: 4)
                }
                .disabled(form.username.isEmpty)
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct CustomTextField: View {
    var title: String
    @Binding var text: String
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.indigo)
            TextField(title, text: $text)
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
