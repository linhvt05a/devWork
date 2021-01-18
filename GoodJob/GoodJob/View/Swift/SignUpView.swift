//
//  SignUpView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignUpView: UIView {

    class func loadViewFromXib() -> SignUpView {
        return Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)?.first as! SignUpView
    }

}
