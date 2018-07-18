//
//  ProductCollectionViewCell.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 17/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(red:0.87, green:0.87, blue:0.87, alpha:1.0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
