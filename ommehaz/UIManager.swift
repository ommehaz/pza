//
//  UIResolutionManager.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 15/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit

class UIManager {
    static let shared = UIManager()
    let categoryCollectionUIProperties = CategoryCollectionUIProperties()
    
    private init() {}
}

class CategoryCollectionUIProperties {
    private let MARGIN: CGFloat = UIScreen.main.bounds.width == 375.0 ? 4 : 1
    let HEIGHT = UIScreen.main.bounds.height / 11
    let WIDTH = UIScreen.main.bounds.width
    lazy private(set) var CELL_HEIGHT = UIScreen.main.bounds.height / 11 - MARGIN
    lazy private(set) var CELL_WIDTH = UIScreen.main.bounds.height / 11 - MARGIN
    let MIN_CELL_SPACING: CGFloat = 5
    
    var sectionInset: UIEdgeInsets {
        print(UIScreen.main.bounds.width)
        let numberOfItems: CGFloat = CGFloat(DataContainer.shared.categories!.count)
        let totalOccupiedWidth = numberOfItems * CELL_WIDTH
        if(totalOccupiedWidth > WIDTH) {
            return UIEdgeInsets(top: 0, left: MIN_CELL_SPACING, bottom: 0, right: 0)
        }
        let diff = (WIDTH - totalOccupiedWidth) / (numberOfItems * 2)
        return UIEdgeInsets(top: 0, left: diff, bottom: 0, right: diff)
    }
    
    var lineSpacing: CGFloat {
        let numberOfItems: CGFloat = CGFloat(DataContainer.shared.categories!.count)
        let totalOccupiedWidth = numberOfItems * CELL_WIDTH
        if(totalOccupiedWidth > WIDTH) {
            return MIN_CELL_SPACING
        }
        let diff = (WIDTH - totalOccupiedWidth) / numberOfItems
        return diff
    }
    
}
