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
        contentView.addSubview(signupView)
    }
    
    func setupView() -> CGFloat {
        contentView.height = signupView.height
        signupView.width = self.width
        return contentView.height
    }
}
