//
//  FruitDetailInteractor.swift
//  Viper Practice
//
//  Created by Huzaifa-Umer on 23/04/2024.
//

import Foundation

protocol FruitDetailInteractorProtocol : AnyObject {
    func fetchFruitDetail()
}

final class FruitDetailInteractor : FruitDetailInteractorProtocol {

    var presenter: FruitDetailPresenterProtocol?
    
    
    // MARK: - FruitDetailInteractorProtocol
    
    func fetchFruitDetail() {
        
    }
}
