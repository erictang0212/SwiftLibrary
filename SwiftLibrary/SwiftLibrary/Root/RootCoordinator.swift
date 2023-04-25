//
//  RootCoordinator.swift
//  SwiftLibrary
//
//  Created by ShaoHuan Tang on 2023/4/22.
//

import UIKit

class RootCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        showRootViewController()
    }
    
    // MARK: - Private method
    
    private func showRootViewController() {
        let rootViewController = RootViewController(rootViewModel: RootViewModel())
        rootViewController.didSelectedCell = { topic in
            switch topic {
            case .scanner:
                return
            case .collectionView:
                self.showCollectionViewController()
            }
            
        }
        navigationController.pushViewController(rootViewController, animated: true)
    }
    
    private func showCollectionViewController() {
        let collectionViewController = CollectionViewController()
        navigationController.pushViewController(collectionViewController, animated: true)
    }
}
