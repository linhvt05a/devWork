//
//  SignUpView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit


class SignUpView: UIView {

    @IBOutlet weak var externalView: UIView!
    @IBOutlet weak var internalView: UIView!
    @IBOutlet weak var supportView: UIView!
    
    @IBOutlet weak var bottomLine1: UIView!
    @IBOutlet weak var bottomLine2: UIView!
    
    @IBOutlet weak var signInBtn: UIButton!
    class func loadViewFromXib() -> SignUpView {
        return Bundle.main.loadNibNamed("SignUpView", owner: self, options: nil)?.first as! SignUpView
    }

    func setupView(){
        bottomLine1.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        bottomLine2.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        externalView.cornerRadius = 12
        externalView.shadow = true
        externalView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 2, height: 2), shadowOpacity: 1, shadowRadius: 2, boderWidth: 1, boderColor: UIColor.clear.cgColor, backGroundColor: UIColor.white.cgColor)
        
        internalView.cornerRadius = 12
        internalView.shadow = true
        internalView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 2, height: 2), shadowOpacity: 1, shadowRadius: 2, boderWidth: 1, boderColor: UIColor.clear.cgColor, backGroundColor: UIColor.white.cgColor)
        
        supportView.cornerRadius = 12
        supportView.shadow = true
        supportView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 2, height: 2), shadowOpacity: 1, shadowRadius: 2, boderWidth: 1, boderColor: UIColor.clear.cgColor, backGroundColor: UIColor.white.cgColor)
        
        signInBtn.addTarget(self, action: #selector(gotoLogin), for: .touchUpInside)
    }
    
    @objc func gotoLogin(){
        let loginVC = SignInViewController.create()
        UIApplication.topViewController()?.navigationController?.pushViewController(loginVC, animated: true)
    }
}


