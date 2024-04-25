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

final class FruitesRouter: FruitesRouterProtocol {
    
    weak var sourceViewController: UIViewController?
    
    func setupFruitesAsRootViewController() {
        let nav = UINavigationController()
        
        let fruitView = FruitesViewController()
        let presenter = FruitesPresenter()
        let interactor = FruitesInteractor()
        let router = FruitesRouter()
        
        presenter.view = fruitView
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        fruitView.presenter = presenter
        router.sourceViewController = fruitView
        
        nav.viewControllers = [fruitView]
        
        let wsceen = UIApplication.shared.connectedScenes.first as? UIWindowScene
        wsceen?.windows.first?.rootViewController = nav
        wsceen?.windows.first?.makeKeyAndVisible()
    }
    
    // MARK: - FruitesRouterProtocol
    
    func navigateToFruitDetail(for fruit: Fruit) {
        let vc = FruitDetailViewController()
        let presenter = FruitDetailPresenter()
        presenter.fruit = fruit
        vc.presenter = presenter
        sourceViewController?.navigationController?.pushViewController(vc, animated: true)
    }
}
