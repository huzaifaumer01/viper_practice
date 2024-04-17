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
        
        let apiConfig = APIConfig(scheme: kApiScheme,
                                          host: kApiHost)
        let apiFetcher = APIFetcher()
        let api = API(apiConfig: apiConfig, apiFetcher: apiFetcher)

        api.getFruites { result in
            switch result {
            case .success(let response):
                // Display the posts
                self.presenter?.taskFetched(response)
            case .failure(let error):
                // Handle the error accordingly
                // Display an error alert
                print(error.localizedDescription)
            }
        }
        
    }
    
}
