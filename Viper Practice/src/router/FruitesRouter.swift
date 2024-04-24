//
//  FruitesRouter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation
import UIKit

protocol FruitesRouterProtocol : AnyObject {
    func navigateToFruitDetail(for fruit: Fruit, fromView: UIViewController)
}

final class FruitesRouter: FruitesRouterProtocol {
    
    func navigateToFruitDetail(for fruit: Fruit, fromView: UIViewController) {
        let vc = FruitDetailViewController()
        let presenter = FruitDetailPresenter()
        let interactor = FruitDetailInteractor()
        presenter.fruit = fruit
        vc.presenter = presenter
        fromView.navigationController?.pushViewController(vc, animated: true)
    }
    
    func setupFruitesAsRootViewController() {
        let nav = UINavigationController()
        let fruitView = FruitesViewController()
        let presenter = FruitesPresenter()
        let interactor = FruitesInteractor()
        let router = FruitesRouter()
        fruitView.presenter = presenter
        presenter.view = fruitView
        presenter.interactor = interactor
        interactor.presenter = presenter
        presenter.router = router
        nav.viewControllers = [fruitView]
        
        let wsceen = UIApplication.shared.connectedScenes.first as? UIWindowScene
        wsceen?.windows.first?.rootViewController = nav
        wsceen?.windows.first?.makeKeyAndVisible()
    }
}
