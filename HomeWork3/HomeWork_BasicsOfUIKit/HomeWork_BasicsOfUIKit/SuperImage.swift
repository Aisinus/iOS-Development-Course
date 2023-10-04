//
//  SuperImage.swift
//  HomeWork_BasicsOfUIKit
//
//  Created by Aisen Zhylkybay on 04.10.2023.
//

import Foundation
import UIKit

class SuperImage: UIImageView{
    
    override init(image: UIImage?) {
        super.init(image: image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init (image: UIImage?, imageRadius: CGFloat){
        super.init(image: image)
        setupView(imageRadius: imageRadius)
    }
    
    func setupView(imageRadius:CGFloat){
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = imageRadius/2
        clipsToBounds = true
    }
}
