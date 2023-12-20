//
//  Task.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation

struct Task {
    let title: String
    let description: String
}

func creatTasksMockArray() -> [Task] {
    let tasks = [
                Task(title: "Task 1", description: "Task one detail"),
                Task(title: "Task 2", description: "Task two detail"),
                Task(title: "Task 3", description: "Task three detail"),
                Task(title: "Task 4", description: "Task four detail"),
                Task(title: "Task 5", description: "Task five detail"),
                Task(title: "Task 6", description: "Task six detail"),
                Task(title: "Task 7", description: "Task seven detail"),
                Task(title: "Task 8", description: "Task eight detail"),
            ]
    return tasks
}
