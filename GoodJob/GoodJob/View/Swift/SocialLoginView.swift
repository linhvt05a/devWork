//
//  SocialLoginView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SocialLoginView: UIView {
    
    class func loadViewFromNib() -> SocialLoginView {
        return Bundle.main.loadNibNamed("SocialLoginView", owner: self, options: nil)?.first as! SocialLoginView
    }

    func setupView(){
        self.shadow = true
        self.cornerRadius = 12
        self.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 0.3, shadowRadius: 2, boderWidth: 0, boderColor: UIColor.gray.cgColor, backGroundColor: UIColor.white.cgColor)
    }
}
