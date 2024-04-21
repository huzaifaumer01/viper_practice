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
    func getFruites() -> [Fruit]
}

class FruitesPresenter : FruitesPresenterProtocol {
    
    weak var view : FruitesViewProtocol?
    var interactor: FruitesInteractorProtocol?
    var router: FruitesRouterProtocol?
    
    private var fruites = [Fruit]()
    
    func loadView() {
        interactor?.fetchFruites()
    }
    
    func fruitesFetched(_ fruites: [Fruit]) {
        self.fruites.append(contentsOf: fruites)
        view?.displayFruites()
    }
    
    func getFruites() -> [Fruit] {
        return fruites
    }
}
