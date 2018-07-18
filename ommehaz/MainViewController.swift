//
//  ViewController.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 08/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {

    let topView = UIView()
    var categoryCollectionView: CategoryCollectionView = {
        return CategoryCollectionView()
    }();
    
    var basketTableView: BasketCollectionView = {
        return BasketCollectionView()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .flatWhite
        
        DataContainer.shared.getCategories {
            self.view.addSubview(self.topView)
            self.view.addSubview(self.basketTableView)
            self.topView.addSubview(self.categoryCollectionView)
            self.topView.backgroundColor = UIColor.flatBlue
            
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
            
            self.basketTableView.snp.makeConstraints {
                $0.edges.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
            }
        }
    }
}
