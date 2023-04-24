//
//  BaseCoordinator.swift
//  SwiftLibrary
//
//  Created by ShaoHuan Tang on 2023/4/22.
//

import Foundation

class BaseCoordinator: Coordinator {

    var chillCoordinators = [Coordinator]()
    
    func addDependency(_ coordinator: Coordinator) {
        if chillCoordinators.contains(where: { $0 === coordinator }) {
            return
        }
        chillCoordinators.append(coordinator)
    }
    
    func removeDependency(_ coordinator: Coordinator) {
        if chillCoordinators.isEmpty {
            return
        }
        
        for (index, chillCoordinator) in chillCoordinators.enumerated() {
            if chillCoordinator === coordinator {
                chillCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func start() {}
}
