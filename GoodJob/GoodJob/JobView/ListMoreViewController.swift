//
//  ListMoreViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

class ListMoreViewController: UIViewController {
    var typeID = 0
    var typeText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }

    class func create() -> ListMoreViewController {
        return ListMoreViewController(nibName: "ListMoreViewController", bundle: nil)
    }

}
