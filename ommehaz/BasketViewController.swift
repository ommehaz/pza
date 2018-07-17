//
//  ViewController.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 08/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit
import SnapKit

class BasketViewController: UIViewController {
    
    lazy var categoryCollectionDataController: CategoryCollectionView = {
        let dataController = CategoryCollectionView()
        return dataController
    }()
    
    let topView = UIView()
    
    var categoryCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cellWidth = UIManager.shared.categoryCollectionUIProperties.CELL_WIDTH
        let cellHeight = UIManager.shared.categoryCollectionUIProperties.CELL_HEIGHT
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.register(CategoryCollectionViewCell.self, forCellWithReuseIdentifier: "categoryCollectionViewCell")
        cv.showsHorizontalScrollIndicator = false
        cv.showsVerticalScrollIndicator = false
        cv.backgroundColor = .clear
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(topView)
        topView.addSubview(categoryCollectionView)
        topView.backgroundColor = UIColor.flatBlue
        
        
        DataContainer.shared.getCategories {
            self.categoryCollectionView.dataSource = self.categoryCollectionDataController
            self.categoryCollectionView.delegate = self.categoryCollectionDataController
            
            self.topView.snp.makeConstraints {
                $0.leading.equalToSuperview()
                $0.trailing.equalToSuperview()
                $0.top.equalToSuperview()
                $0.height.equalTo(UIScreen.main.bounds.height / 3)
            }
            
            self.categoryCollectionView.snp.makeConstraints {
                $0.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(8)
                $0.leading.equalToSuperview()
                $0.trailing.equalToSuperview()
                $0.height.equalTo(UIManager.shared.categoryCollectionUIProperties.HEIGHT)
            }
        }
    }
}
