//
//  TaskPresenter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation

protocol TaskPresenterProtocol : AnyObject {
    func loadView()
    func taskFetched(_ tasks: [Task])
}

class TaskPresenter : TaskPresenterProtocol {
    
    weak var view : TaskViewProtocol?
    var interactor: TaskInteractorProtocol?
    var router: TaskRouterProtocol?
    
    func loadView() {
        interactor?.fetchTasks()
    }
    
    func taskFetched(_ tasks: [Task]) {
        view?.displayTasks(tasks)
    }
}
