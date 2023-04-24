//
//  SnapKit+Extension.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import UIKit

extension UIView {
    
    func applyEqualConstraints(to view: UIView) {
        self.snp.makeConstraints { make in
            make.top.equalTo(view)
            make.bottom.equalTo(view)
            make.right.equalTo(view)
            make.left.equalTo(view)
        }
    }
}
