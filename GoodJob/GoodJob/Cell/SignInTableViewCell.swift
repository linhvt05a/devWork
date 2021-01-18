//
//  SignInTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignInTableViewCell: UITableViewCell {
    let socialView = SocialLoginView.loadViewFromNib()
    let bottomLine = BottomLineView.loadViewFromXib()
    let viewLogin = LoginFormView.loadViewFromNib()
    let bottomLine1 = BottomLineView.loadViewFromXib()
    let buttonView = ButtonView.loadViewFromXib()
    let supportView = SupportAccountView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        socialView.setupView()
        viewLogin.setupView()
        supportView.setupView()
        
        buttonView.btnSignup.addTarget(self, action: #selector(gotoSignup), for: .touchUpInside)
    }

    @objc func gotoSignup(){
        let signupVC = RegisterViewController.create()
        UIApplication.topViewController()?.navigationController?.pushViewController(signupVC, animated: true)
    }
    func setupView() -> CGFloat {
       
        contentView.height = socialView.height + bottomLine.height + viewLogin.height + bottomLine1.height + buttonView.height + supportView.height
         
        socialView.center = self.center
        socialView.top = MARGIN_SIZE*4
        contentView.addSubview(socialView)
        
       
        bottomLine.center = self.center
        bottomLine.top = socialView.bottom + MARGIN_SIZE*4
        contentView.addSubview(bottomLine)
        
        viewLogin.center = self.center
        viewLogin.top = bottomLine.bottom + MARGIN_SIZE*4
        contentView.addSubview(viewLogin)
        
        bottomLine1.center = self.center
        bottomLine1.top = viewLogin.bottom + MARGIN_SIZE*4
        contentView.addSubview(bottomLine1)
        
        buttonView.center = self.center
        buttonView.top = bottomLine1.bottom + MARGIN_SIZE
        contentView.addSubview(buttonView)
        
        supportView.center = self.center
        supportView.top = buttonView.bottom
        contentView.addSubview(supportView)
        
        
        return contentView.height
    }
}
