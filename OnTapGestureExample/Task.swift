//
//  Task.swift
//  OnTapGestureExample
//
//  Created by Mark Cornelisse on 05/04/2024.
//

import Foundation

struct Task: Identifiable {
    var title: String
    var completed: Bool
    
    // MARK: Identifiable
    let id = UUID()
}

let initialTasks = [
    Task(title: "Clean home", completed: false),
    Task(title: "Pick up the kids from school", completed: false),
    Task(title: "Answer emails", completed: false),
    Task(title: "Morning workout", completed: false)
]
