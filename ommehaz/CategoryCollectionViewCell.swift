//
//  CategoryCollectionViewCell.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 11/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit
import ChameleonFramework

class CategoryCollectionViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        imageView.backgroundColor = .clear
        self.backgroundColor = UIColor.red
        self.layer.cornerRadius = UIManager.shared.categoryCollectionUIProperties.CELL_HEIGHT / 2
        self.layer.borderWidth = 1
        layer.borderColor = UIColor.black.withAlphaComponent(0.4).cgColor

        self.imageView.contentMode = .scaleAspectFit
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
