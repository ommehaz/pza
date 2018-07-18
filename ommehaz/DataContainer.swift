//
//  DataContainer.swift
//  guya
//
//  Created by Yusuf Tezel on 26/04/2018.
//  Copyright © 2018 Yusuf Tezel. All rights reserved.
//

import Foundation
import Firebase
import CodableFirebase

class DataContainer {
    static let shared = DataContainer()
    private(set) var categories: [Category]?
    
    private init() {}
    
    func getCategories(callback: @escaping () -> Void){
        Database.database().reference(withPath: Constants.CategoryDatabasePath).observeSingleEvent(of: .value, with: { snapshot in
            guard let value = snapshot.value else { return }
            do {
                self.categories = try FirebaseDecoder().decode([Category].self, from: value)
                self.categories?.append(contentsOf: try FirebaseDecoder().decode([Category].self, from: value))
                self.categories?.append(contentsOf: try FirebaseDecoder().decode([Category].self, from: value))
                self.categories?.append(contentsOf: try FirebaseDecoder().decode([Category].self, from: value))
                self.categories?.append(contentsOf: try FirebaseDecoder().decode([Category].self, from: value))
                
                callback()
            } catch let error {
                // error handling HER
                print(error)
            }
        })
    }
    
}
