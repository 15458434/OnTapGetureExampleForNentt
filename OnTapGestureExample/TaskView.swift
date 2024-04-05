//
//  TaskView.swift
//  OnTapGestureExample
//
//  Created by Mark Cornelisse on 05/04/2024.
//

import SwiftUI

struct TaskView: View {
    var task: Task
    @State var completed: Bool
    
    var body: some View {
        HStack {
            Text(task.title)
                .font(.system(size: 20, design: .default))
            Spacer()
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    self.completed.toggle()
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TaskView(task: initialTasks[1], completed: false)
}
