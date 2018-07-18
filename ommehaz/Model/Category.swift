//
//  Item.swift
//  guya
//
//  Created by Yusuf Tezel on 17/06/2018.
//  Copyright © 2018 Yusuf Tezel. All rights reserved.
//
struct Category: Codable {
    let id: Int
    let name: String
    let imageName: String
    let imageURL: String
    let enabled: Bool
    let indexRanking: Int
    let products: [Product]
    let toppings: [Topping]?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case imageName = "imageName"
        case imageURL = "imageUrl"
        case enabled = "enabled"
        case indexRanking = "indexRanking"
        case products = "products"
        case toppings = "toppings"
    }
}
