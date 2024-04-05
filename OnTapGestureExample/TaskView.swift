//
//  TaskView.swift
//  OnTapGestureExample
//
//  Created by Mark Cornelisse on 05/04/2024.
//

import SwiftUI

struct TaskView: View {
    // structs are a value reference and behave like copy on write. So if a property in a struct changes a new struct is created in memory.
    var task: Task
    // State variables are variables are wrapped in a propertywrapper. The property wrapper leverages the copy on write behaviour from the struct and triggers view updates.
    @State var completed: Bool
    
    var body: some View {
        HStack {
            Text(task.title)
                .font(.system(size: 20, design: .default))
            Spacer()
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    // But toggling the completed state variable you mutate only the completed state variable. 
                    // However in the current state toggling the completed image isn't working. This is because the view update isn't responding to the value in the completed variable.
                    self.completed.toggle()
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TaskView(task: initialTasks[1], completed: false)
}
