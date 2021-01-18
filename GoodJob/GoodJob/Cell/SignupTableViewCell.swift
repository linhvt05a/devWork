//
//  SignupTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignupTableViewCell: UITableViewCell {
    let signupView = SignUpView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        contentView.backgroundColor = #colorLiteral(red: 0.9572470033, green: 0.9572470033, blue: 0.9572470033, alpha: 1)
        contentView.addSubview(signupView)
        signupView.setupView()
    }
    
    func setupView() -> CGFloat {
        contentView.height = signupView.height
        signupView.width = self.width
        return contentView.height
    }
}
