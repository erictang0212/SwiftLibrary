//
//  MainCoordinator.swift
//  SwiftLibrary
//
//  Created by ShaoHuan Tang on 2023/4/22.
//

import UIKit

class MainCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    private var navigationController: UINavigationController
    
    override func start() {
        runFlow()
    }
    
    init(window: UIWindow, navigationController: UINavigationController) {
        self.window = window
        self.navigationController = navigationController
        if #available(iOS 11.0, *) {
            self.navigationController.navigationBar.prefersLargeTitles = true
        }
        self.window.rootViewController = navigationController
    }
    
    private func runFlow() {
        let coordinator = RootCoordinator(navigationController: navigationController)
        addDependency(coordinator)
        coordinator.start()
    }
}
