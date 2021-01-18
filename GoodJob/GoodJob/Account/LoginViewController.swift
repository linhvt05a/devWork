//
//  LoginViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    class func create() -> LoginViewController {
        return LoginViewController(nibName: "LoginViewController", bundle: nil)
    }
}
