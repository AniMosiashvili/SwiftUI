//
//  AddTaskView.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var taskManager: TaskManager
    @State private var newTask: String = ""
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
                Text("Add a New Task")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(radius: 4)
                
                VStack(spacing: 15) {
                    TextField("Enter task description...", text: $newTask)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: {
                        if !newTask.trimmingCharacters(in: .whitespaces).isEmpty {
                            taskManager.tasks.append(newTask)
                            message = "✅ Task added successfully!"
                            newTask = ""
                        } else {
                            message = "⚠️ Please enter a task."
                        }
                    }) {
                        Text("Add Task")
                            .font(.title3)
                            .bold()
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color.blue, Color.purple]),
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
