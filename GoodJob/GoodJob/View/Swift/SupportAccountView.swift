//
//  SupportAccountView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SupportAccountView: UIView {

    @IBOutlet weak var supportView: UIView!
    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var txtDes: UILabel!
    
    class func loadViewFromXib() -> SupportAccountView {
        return Bundle.main.loadNibNamed("SupportAccountView", owner: self, options: nil)?.first as! SupportAccountView
    }
    
    func setupView(){
        supportView.shadow = true
        supportView.cornerRadius = 12
        supportView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 0.3, shadowRadius: 1, boderWidth: 0, boderColor: UIColor.gray.cgColor, backGroundColor: UIColor.white.cgColor)
    }
}
