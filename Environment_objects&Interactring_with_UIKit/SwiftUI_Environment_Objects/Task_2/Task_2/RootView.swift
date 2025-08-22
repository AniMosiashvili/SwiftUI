//
//  RootView.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack(spacing: 25) {
                    Text("Task Manager")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    
                    TaskListView()
                    
                    NavigationLink(destination: AddTaskView()) {
                        Text("➕ Add Task")
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(destination: RemoveTaskView()) {
                        Text("🗑 Remove Task")
                            .font(.title3)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red.opacity(0.8))
                            .foregroundColor(.white)
                            .cornerRadius(15)
                    }
                }
                .padding()
            }
            .navigationBarHidden(true)
        }
    }
}
