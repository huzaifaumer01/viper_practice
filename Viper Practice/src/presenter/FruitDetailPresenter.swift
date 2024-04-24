//
//  FruitDetailPresenter.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 23/04/2024.
//

import Foundation

protocol FruitDetailPresenterProtocol : AnyObject {
    var fruit: Fruit { get set}
    func loadData()
}

final class FruitDetailPresenter : FruitDetailPresenterProtocol {
    var fruit: Fruit = Fruit()
    
    weak var view : FruitDetailViewProtocol?
    var interactor: FruitDetailInteractorProtocol?
    var router: FruitesRouterProtocol?
        
    // MARK: - FruitDetailPresenterProtocol
    
    func loadData() {
        view?.displayFruitDetail()
    }
}
