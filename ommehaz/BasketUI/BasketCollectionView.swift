//
//  BasketTableView.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 17/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//


import UIKit
import SDWebImage

class BasketCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in self.subviews {
            if !subview.isHidden && subview.isUserInteractionEnabled && subview.point(inside: convert(point, to: subview), with: event) {
                return true
            }
        }
        return false
    }
    
    convenience init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 0
        self.init(frame: CGRect.zero, collectionViewLayout: layout)
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.dataSource = self
        self.delegate = self
        self.register(EmptyBasketCollectionViewCell.self, forCellWithReuseIdentifier: "Empty")
        self.register(ProductCollectionViewCell.self, forCellWithReuseIdentifier: "Product")
        self.register(TopInfoCollectionViewCell.self, forCellWithReuseIdentifier: "Topinfo")
        self.showsHorizontalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        self.backgroundColor = UIColor.clear.withAlphaComponent(0)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(indexPath.row == 0) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Empty", for: indexPath) as! EmptyBasketCollectionViewCell
            return cell
        }
        if(indexPath.row == 1) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Topinfo", for: indexPath) as! TopInfoCollectionViewCell
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Product", for: indexPath) as! ProductCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = collectionView.layer.bounds.width
        if(indexPath.row == 0) {
            let safeAreaDiff = collectionView.superview?.safeAreaInsets.top
            let collectionViewHeight = UIManager.shared.categoryCollectionUIProperties.CELL_HEIGHT
            return CGSize(width: cellWidth, height: safeAreaDiff! + collectionViewHeight)
        }
        if(indexPath.row == 1) {
            return CGSize(width: cellWidth, height: 80)
        }
        return CGSize(width: cellWidth, height: 100)
    }
}

