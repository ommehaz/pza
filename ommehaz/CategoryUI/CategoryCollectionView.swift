//
//  CategoryCollectionView2.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 17/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit
import SDWebImage

class CategoryCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    convenience init() {
        let cellWidth = UIManager.shared.categoryCollectionUIProperties.CELL_WIDTH
        let cellHeight = UIManager.shared.categoryCollectionUIProperties.CELL_HEIGHT
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        self.init(frame: CGRect.zero, collectionViewLayout: layout)
    }
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.dataSource = self
        self.delegate = self
        self.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: Constants.CategoryCollectionViewIdentifier)
        self.showsHorizontalScrollIndicator = false
        self.showsVerticalScrollIndicator = false
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataContainer.shared.categories!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.CategoryCollectionViewIdentifier, for: indexPath) as! CategoryCollectionViewCell
        if(indexPath.row == 0) {
            let category = DataContainer.shared.categories![indexPath.row]
            cell.imageView.sd_setImage(with: URL(string: category.imageURL), completed: nil)
            return cell
        }
        if(indexPath.row == 1) {
            cell.imageView.sd_setImage(with: URL(string: "https://firebasestorage.googleapis.com/v0/b/ommehaz-de49c.appspot.com/o/CategoryImages%2FrulleKebab.png?alt=media&token=5a1d3686-cae3-4567-885d-e9ad8dc76667"), completed: nil)
            return cell
        }
        if(indexPath.row == 2) {
            cell.imageView.sd_setImage(with: URL(string: "https://firebasestorage.googleapis.com/v0/b/ommehaz-de49c.appspot.com/o/CategoryImages%2Fcalzone.png?alt=media&token=ef70c9c6-7ae8-4faf-9149-cd9328f5fbe2"), completed: nil)
            return cell
        }
        if(indexPath.row == 3) {
            cell.imageView.sd_setImage(with: URL(string: "https://firebasestorage.googleapis.com/v0/b/ommehaz-de49c.appspot.com/o/CategoryImages%2FpizzaSandwich.png?alt=media&token=b8063b1f-57d9-466c-a9a1-00e3298ac9b8"), completed: nil)
            return cell
        }
        if(indexPath.row == 4) {
            cell.imageView.sd_setImage(with: URL(string: "https://firebasestorage.googleapis.com/v0/b/ommehaz-de49c.appspot.com/o/CategoryImages%2Fdrinks.png?alt=media&token=4c05cd22-54ca-430a-aa1e-0855570ceb33"), completed: nil)
            return cell
        }
        let category = DataContainer.shared.categories![indexPath.row]
        cell.imageView.sd_setImage(with: URL(string: category.imageURL), completed: nil)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset = UIManager.shared.categoryCollectionUIProperties.sectionInset
        return inset
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let inset = UIManager.shared.categoryCollectionUIProperties.lineSpacing
        return inset
    }
}
