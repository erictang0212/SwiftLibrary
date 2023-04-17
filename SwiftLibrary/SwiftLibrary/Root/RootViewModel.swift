//
//  RootViewModel.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import Foundation

enum Topic {
    case scanner
    case collectionView
    
    var title: String {
        switch self {
        case .scanner:
            return "Scanner"
        case .collectionView:
            return "CollectionView"
        }
    }
}

class RootViewModel {
    
    var topics: [Topic] = [.scanner, .collectionView]
}
