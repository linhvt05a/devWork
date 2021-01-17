//
//  SettingViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    class func create() -> SettingViewController {
        return SettingViewController(nibName: "SettingViewController", bundle: nil)
    }

}
