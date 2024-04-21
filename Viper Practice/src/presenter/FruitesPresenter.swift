//
//  FruitesPresenter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation

protocol FruitesPresenterProtocol : AnyObject {
    func loadView()
    func fruitesFetched(_ fruits: [Fruit])
}

class FruitesPresenter : FruitesPresenterProtocol {
    
    weak var view : FruitesViewProtocol?
    var interactor: FruitesInteractorProtocol?
    var router: FruitesRouterProtocol?
    
    func loadView() {
        interactor?.fetchFruites()
    }
    
    func fruitesFetched(_ fruites: [Fruit]) {
        view?.displayFruites(fruites)
    }
}
