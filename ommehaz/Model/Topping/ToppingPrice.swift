//
//  ToppingPrice.swift
//  guya
//
//  Created by Yusuf Tezel on 08/07/2018.
//  Copyright © 2018 Yusuf Tezel. All rights reserved.
//

import Foundation

struct ToppingPrice: Codable {
    let toppingPriceCategory: ToppingPriceCategory
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case toppingPriceCategory = "toppingPriceCategory"
        case price = "price"
    }
}
