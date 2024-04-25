//
//  FruitesPresenter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation
import UIKit

protocol FruitesPresenterProtocol : AnyObject {
    func loadData()
    func fruitesFetched(_ fruits: [Fruit])
    func didSelectFruit(with fruit: Fruit)
    var fruites: [Fruit] { get }
    
}

final class FruitesPresenter : FruitesPresenterProtocol {

    var fruites: [Fruit] = []
    
    weak var view : FruitesViewProtocol?
    var interactor: FruitesInteractorProtocol?
    var router: FruitesRouterProtocol?
        
    // MARK: - FruitesPresenterProtocol
    
    func loadData() {
        interactor?.fetchFruites()
    }
    
    func fruitesFetched(_ fruites: [Fruit]) {
        self.fruites.append(contentsOf: fruites)
        view?.displayFruites()
    }
    
    func didSelectFruit(with fruit: Fruit) {
        router?.navigateToFruitDetail(for: fruit)
    }
}
