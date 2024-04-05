//
//  TaskView.swift
//  OnTapGestureExample
//
//  Created by Mark Cornelisse on 05/04/2024.
//

import SwiftUI

struct TaskView: View {
    // By making the task propery a state variable the task now becomes mutable for this view and this view can respond to it.
    @State var task: Task
    
    var body: some View {
        HStack {
            Text(task.title)
                .font(.system(size: 20, design: .default))
            Spacer()
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    // We need to update the onTapGesture to point to the completed property in the task. So the state variable task get's updated.
                    self.task.completed.toggle()
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TaskView(task: initialTasks[1])
}
