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
        let repo = FruitesRepository()
        repo.fetchFruitesRepository(isMockData: true, completion: { result in
            switch result {
            case .success(let response):
                self.presenter?.taskFetched(response)
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
}
