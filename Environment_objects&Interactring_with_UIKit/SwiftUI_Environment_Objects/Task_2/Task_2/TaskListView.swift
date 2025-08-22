//
//  TaskListView.swift
//  Task_2
//
//  Created by Anna Harris on 22.08.25.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var taskManager: TaskManager
    
    var body: some View {
        VStack {
            if taskManager.tasks.isEmpty {
                Text("No tasks yet. Add one!")
                    .foregroundColor(.white)
                    .padding()
            } else {
                List {
                    ForEach(taskManager.tasks.indices, id: \.self) { index in
                        Text(taskManager.tasks[index])
                            .font(.body)
                            .padding(5)
                    }
                }
                .cornerRadius(15)
                .shadow(radius: 5)
            }
        }
        .frame(maxHeight: 300)
    }
}
