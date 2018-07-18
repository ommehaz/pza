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
        self.backgroundColor = UIColor.flatWhite
        self.layer.cornerRadius = UIManager.shared.categoryCollectionUIProperties.CELL_HEIGHT / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.withAlphaComponent(0.3).cgColor

        self.addSubview(imageView)
        self.imageView.backgroundColor = .clear
        self.imageView.contentMode = .scaleAspectFit
        imageView.snp.makeConstraints{
            $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5))
        }
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        imageView.addGestureRecognizer(tap)
        imageView.isUserInteractionEnabled = true
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.backgroundColor = UIColor.clear
        self.layer.borderWidth = 0
        UIView.animate(withDuration: 0.5, animations: {
            self.backgroundColor = UIColor.flatWhite
            self.layer.borderWidth = 1
        })
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
