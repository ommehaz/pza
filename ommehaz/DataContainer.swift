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

let CATEGORY_DATABASE_PATH = "categories"

class DataContainer {
    static let shared = DataContainer()
    var categories: [Category]!
    var ref: DatabaseReference!
    
    private init() {
        self.ref = Database.database().reference()
    }
    
    func fetchData(callback: @escaping () -> Void){
        Database.database().reference(withPath: CATEGORY_DATABASE_PATH).observeSingleEvent(of: .value, with: { snapshot in
            guard let value = snapshot.value else { return }
            do {
                self.categories = try FirebaseDecoder().decode([Category].self, from: value)
                print(self.categories)
            } catch let error {
                print(error)
            }
            callback()
        })
    }
}
