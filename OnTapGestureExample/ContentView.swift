//
//  ContentView.swift
//  OnTapGestureExample
//
//  Created by Mark Cornelisse on 05/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var tasks: [Task]
    
    var body: some View {
        VStack {
            List(tasks) { task in
                TaskView(task: task, completed: task.completed)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(tasks: initialTasks)
}
