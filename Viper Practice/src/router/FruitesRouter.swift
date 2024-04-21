//
//  FruitesRouter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation
import UIKit

protocol FruitesRouterProtocol : AnyObject {
    func navigateToFruitDetail(for fruit: Fruit)
}

class FruitesRouter {
    
    func setupFruitesAsRootViewController() {
        let nav = UINavigationController()
        let fruitView = FruitesViewController()
        
        let interactor = FruitesInteractor()
        let presenter = FruitesPresenter()
        
        fruitView.presenter = presenter
        presenter.view = fruitView
        presenter.interactor = interactor
        interactor.presenter = presenter
        nav.viewControllers = [fruitView]
        
        let wsceen = UIApplication.shared.connectedScenes.first as? UIWindowScene
        wsceen?.windows.first?.rootViewController = nav
        wsceen?.windows.first?.makeKeyAndVisible()
    }
}
