//
//  Product.swift
//  guya
//
//  Created by Yusuf Tezel on 06/07/2018.
//  Copyright © 2018 Yusuf Tezel. All rights reserved.
//

import Foundation

struct Product: Codable {
    let id: Int
    let name: String
    let imageName: String
    let imageURL: String
    let enabled: Bool
    let indexRanking: Int
    let price: Int
    let toppingPrices: [ToppingPrice]
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case imageName = "imageName"
        case imageURL = "imageUrl"
        case enabled = "enabled"
        case indexRanking = "indexRanking"
        case price = "price"
        case toppingPrices = "toppingPrices"
    }
}
