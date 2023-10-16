//
//  SuperLabel.swift
//  HomeWork_BasicsOfUIKit
//
//  Created by Aisen Zhylkybay on 04.10.2023.
//

import Foundation
import UIKit

class SuperLabel: UILabel{
    
    init(){
        super.init(frame: CGRectZero)
        setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLabel(){
        translatesAutoresizingMaskIntoConstraints = false
        text = "Label"
    }
}
