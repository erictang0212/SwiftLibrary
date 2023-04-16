//
//  UIView+Extension.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import UIKit

extension UIView {
    
    func loadViewFromNib()  {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        addSubview(view)
    }
}
