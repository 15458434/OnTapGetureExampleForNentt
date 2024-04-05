//
//  TaskView.swift
//  OnTapGestureExample
//
//  Created by Mark Cornelisse on 05/04/2024.
//

import SwiftUI

struct TaskView: View {
    // By keeping task as a State variable only the variable in this view is updated. In order to update it in the list of the content view, turn it into a binding property wrapper. It will function as a conduit straight to the tasks state propery in ContentView.
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Text(task.title)
                .font(.system(size: 20, design: .default))
            Spacer()
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    // We need to update the onTapGesture to point to the completed property in the task. This way the binding will pass on the update the State variable in content view.
                    self.task.completed.toggle()
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TaskView(task: .constant(initialTasks[1]))
}
