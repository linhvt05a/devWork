//
//  HistoryViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    class func create() -> HistoryViewController {
        return HistoryViewController(nibName: "HistoryViewController", bundle: nil)
    }

}
