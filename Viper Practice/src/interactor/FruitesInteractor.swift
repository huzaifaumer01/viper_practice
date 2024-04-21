//
//  FruitesInteractor.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation

protocol FruitesInteractorProtocol : AnyObject {
    func fetchFruites()
}

class FruitesInteractor : FruitesInteractorProtocol {

    var presenter: FruitesPresenterProtocol?
    
    func fetchFruites() {
        let repo = FruitesRepository()
        repo.fetchFruitesRepository(isMockData: true, completion: { result in
            switch result {
            case .success(let response):
                self.presenter?.fruitesFetched(response)
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
}
