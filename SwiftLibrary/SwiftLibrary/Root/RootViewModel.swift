//
//  RootViewModel.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import Foundation

struct Topic {
    var title: String
    var detail: String?
    
    init(title: String) {
        self.title = title
        self.detail = nil
    }
}

class RootViewModel {
    
    var topics: [Topic] = []
    
    init() {
        topics = [
            .init(title: "Scanner")
        ]
    }
}
