//
//  ViewController.swift
//  ommehaz
//
//  Created by Yusuf Tezel on 08/07/2018.
//  Copyright © 2018 ommehaz. All rights reserved.
//

import UIKit

class BasketViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DataContainer.shared.fetchData {
            print("COMPLETED")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

