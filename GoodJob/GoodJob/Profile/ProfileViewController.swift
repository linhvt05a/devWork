//
//  ProfileViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    class func create() -> ProfileViewController {
        return ProfileViewController(nibName: "ProfileViewController", bundle: nil)
    }
}
