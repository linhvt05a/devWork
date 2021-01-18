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
    let headerView = HeaderView.loadViewFromXib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        navigationItem.hidesBackButton = true
        headerView.setupView(title: typeText, left: "icons8-left-arrow-40", btnTitle: "")
        headerView.leftBtn.addTarget(self, action: #selector(popToVc), for: .touchUpInside)
    }

    class func create() -> ListMoreViewController {
        return ListMoreViewController(nibName: "ListMoreViewController", bundle: nil)
    }
    @objc func popToVc() {
        self.navigationController?.popViewController(animated: true)
    }
}
