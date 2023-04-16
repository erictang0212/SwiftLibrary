//
//  RootTableViewCell.swift
//  CodeLibrary
//
//  Created by ShaoHuan Tang on 2023/4/16.
//

import UIKit

class RootTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(title: String) {
        titleLabel.text = title
    }
    
}
