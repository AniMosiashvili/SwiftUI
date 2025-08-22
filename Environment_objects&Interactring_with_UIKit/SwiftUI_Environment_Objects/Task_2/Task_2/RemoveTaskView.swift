//
//  RemoveTaskView.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct RemoveTaskView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var taskIndex: String = ""
    @State private var message: String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Spacer()
                Text("Remove Task")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 4)
                
                VStack(spacing: 15) {
                    TextField("Enter task index (e.g. 0)", text: $taskIndex)
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: {
                        if let index = Int(taskIndex), taskManager.tasks.indices.contains(index) {
                            taskManager.tasks.remove(at: index)
                            message = "✅ Task removed successfully!"
                        } else {
                            message = "⚠️ Invalid index."
                        }
                        taskIndex = ""
                    }) {
                        Text("Remove")
                            .font(.title3)
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.red, Color.pink]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .shadow(radius: 5)
                            .padding(.horizontal)
                    }
                }
                .padding()
                .background(Color.white.opacity(0.15))
                .cornerRadius(20)
                .shadow(radius: 5)
                
                if !message.isEmpty {
                    Text(message)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                }
                
                Spacer()
            }
            .padding()
        }
    }
}
#Preview {
    RemoveTaskView()
}
