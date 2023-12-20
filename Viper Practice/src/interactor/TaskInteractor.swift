//
//  TaskInteractor.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation

protocol TaskInteractorProtocol : AnyObject {
    func fetchTasks()
}

class TaskInteractor : TaskInteractorProtocol {
    
    var presenter: TaskPresenterProtocol?
    
    func fetchTasks() {
        let tasks = creatTasksMockArray()
        presenter?.taskFetched(tasks)
    }
    
}
