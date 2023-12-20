//
//  TaskRouter.swift
//  Viper Practice
//
//  Created by Huzaifa Umer on 20/12/2023.
//

import Foundation
import UIKit

protocol TaskRouterProtocol : AnyObject {
    func navigateToTaskDetail(for task: Task)
}

class TaskRouter {
    
    func setupTaskAsRootViewController() {
        let nav = UINavigationController()
        let taskView = TasksViewController()
        
        let interactor = TaskInteractor()
        let presenter = TaskPresenter()
        
        taskView.presenter = presenter
        presenter.view = taskView
        presenter.interactor = interactor
        interactor.presenter = presenter
        nav.viewControllers = [taskView]
        
        let wsceen = UIApplication.shared.connectedScenes.first as? UIWindowScene
        wsceen?.windows.first?.rootViewController = nav
        wsceen?.windows.first?.makeKeyAndVisible()
    }
}
