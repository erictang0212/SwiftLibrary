//
//  SceneDelegate.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        registerDependenies()
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let mainCoordinator = MainCoordinator(window: window!,
                                              navigationController: UINavigationController())
        mainCoordinator.start()
        window?.makeKeyAndVisible()
    }
    
    private func registerDependenies() {
        DependencyContainer.shared.register(RootViewController())
    }
}

