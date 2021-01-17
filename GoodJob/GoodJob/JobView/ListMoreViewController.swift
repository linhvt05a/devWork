//
//  ListMoreViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

class ListMoreViewController: UIViewController {
    var typeID = 0
    override func viewDidLoad() {
        super.viewDidLoad()
            print(typeID)
        // Do any additional setup after loading the view.
    }

    class func create() -> ListMoreViewController {
        return ListMoreViewController(nibName: "ListMoreViewController", bundle: nil)
    }

}
