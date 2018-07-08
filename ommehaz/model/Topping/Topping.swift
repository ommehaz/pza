//
//  Topping.swift
//  guya
//
//  Created by Yusuf Tezel on 06/07/2018.
//  Copyright © 2018 Yusuf Tezel. All rights reserved.
//

import Foundation

struct Topping: Codable {
    let id: Int
    let name: String
    let imageName: String
    let imageURL: String
    let popularityIndex: Int
    let enabled: Bool
    let toppingRequired: Bool
    let defaultAdded: Bool
    let maxTimesAddable: Int
    let toppingPriceCategory: ToppingPriceCategory
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case imageName = "imageName"
        case imageURL = "imageUrl"
        case popularityIndex = "popularityIndex"
        case enabled = "enabled"
        case toppingRequired = "required"
        case defaultAdded = "defaultAdded"
        case maxTimesAddable = "maxTimesAddable"
        case toppingPriceCategory = "toppingPriceCategory"
    }
}
