//
//  SocialLoginView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SocialLoginView: UIView {
   
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var txtTitle: UILabel!
    
    class func loadViewFromNib() -> SocialLoginView {
        return Bundle.main.loadNibNamed("SocialLoginView", owner: self, options: nil)?.first as! SocialLoginView
    }

    func setupView(){
        containView.shadow = true
        containView.cornerRadius = 12
        containView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 0.3, shadowRadius: 2, boderWidth: 0, boderColor: UIColor.gray.cgColor, backGroundColor: UIColor.white.cgColor)
    }
}
