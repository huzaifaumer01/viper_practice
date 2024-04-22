//
//  FruitesPresenter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation

protocol FruitesPresenterProtocol : AnyObject {
    func loadData()
    func fruitesFetched(_ fruits: [Fruit])
    var fruites: [Fruit] { get }
}

final class FruitesPresenter : FruitesPresenterProtocol {
    var fruites: [Fruit] = []
    
    weak var view : FruitesViewProtocol?
    var interactor: FruitesInteractorProtocol?
    var router: FruitesRouterProtocol?
    
//    private var fruites = [Fruit]()
    
    // MARK: - FruitesPresenterProtocol
    
    func loadData() {
        interactor?.fetchFruites()
    }
    
    func fruitesFetched(_ fruites: [Fruit]) {
        self.fruites.append(contentsOf: fruites)
        view?.displayFruites()
    }
}
