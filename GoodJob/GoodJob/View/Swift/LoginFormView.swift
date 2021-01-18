//
//  LoginFormView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class LoginFormView: UIView {

    @IBOutlet weak var loginView: UIView!
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    
    @IBOutlet weak var btnlogin: UIButton!
    @IBOutlet weak var btnForgot: UIButton!
    
    class func loadViewFromNib() -> LoginFormView {
        return Bundle.main.loadNibNamed("LoginFormView", owner: self, options: nil)?.first as! LoginFormView
    }
    
    func setupView(){
        loginView.shadow = true
        loginView.cornerRadius = 12
        loginView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 1.0, shadowRadius: 2, boderWidth: 0, boderColor: UIColor.gray.cgColor, backGroundColor: UIColor.white.cgColor)
    }
    
}
