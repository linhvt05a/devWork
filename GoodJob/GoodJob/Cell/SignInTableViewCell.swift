//
//  SignInTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignInTableViewCell: UITableViewCell {
  
    @IBOutlet weak var btnSignIn: UIButton!
    @IBOutlet weak var btnSignup: UIButton!
    @IBOutlet weak var loginFacebook: UIView!
    @IBOutlet weak var loginGooglr: UIView!
    @IBOutlet weak var loginApple: UIView!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnFogotPass: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
        let fabook = UITapGestureRecognizer(target: self, action: #selector(userFace))
        self.addGestureRecognizer(fabook)
        
        let google = UITapGestureRecognizer(target: self, action: #selector(userGoogle))
        self.addGestureRecognizer(google)
        
        let apple = UITapGestureRecognizer(target: self, action: #selector(userApple))
        self.addGestureRecognizer(apple)
        
        btnSignup.addTarget(self, action: #selector(gotoSignup), for: .touchUpInside)
        btnSignIn.addTarget(self, action: #selector(userLogin), for: .touchUpInside)
        btnFogotPass.addTarget(self, action: #selector(userForgot), for: .touchUpInside)
    }
    
    @objc private func gotoSignup(){
        let signupVC = RegisterViewController.create()
        Navigate?.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    @objc fileprivate func userLogin(){
       
    }
    
    @objc fileprivate func userForgot(){
        let forgotVc = ForgotPasswordViewController.create()
        Navigate?.navigationController?.pushViewController(forgotVc, animated: true)
    }
    
    @objc func userFace(){
        print("fsdfsdf")
    }
    
    @objc func userGoogle(){
        print("fsdfsd")
    }
    
    @objc func userApple(){
        print("fsdfsdfsdfsd")
    }

}
