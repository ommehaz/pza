//
//  EmptyBasketTableViewCell.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 17/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit
import SDWebImage

class EmptyBasketCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.isOpaque = true
        self.isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

