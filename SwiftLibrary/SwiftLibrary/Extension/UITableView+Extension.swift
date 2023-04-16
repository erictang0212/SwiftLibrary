//
//  UITableView+Extension.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import UIKit

extension UITableView {
    
    func register<T: UITableViewCell>(_ cellNib: T.Type) {
        let identifier = String(describing: T.self)
        let nib = UINib(nibName: identifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: identifier)
    }
    
    func dequeueCell<T: UITableViewCell>(_ type: T.Type, indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: String(describing: T.self), for: indexPath) as! T
    }
}
