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
            // To pass on tasks into a binding put the $ symbol front of it to make it a tunnel to update the tasks state variable.
            List($tasks) { $task in
                TaskView(task: $task)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(tasks: initialTasks)
}
