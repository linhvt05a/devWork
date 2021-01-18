//
//  LoginFormView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class LoginFormView: UIView {

    class func loadViewFromNib() -> LoginFormView {
        return Bundle.main.loadNibNamed("LoginFormView", owner: self, options: nil)?.first as! LoginFormView
    }

}
