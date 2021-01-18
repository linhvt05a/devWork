//
//  SignupTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignupTableViewCell: UITableViewCell {

    let sociaview = SocialLoginView.loadViewFromNib()
    let bottomLine = BottomLineView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        contentView.backgroundColor = #colorLiteral(red: 0.9572470033, green: 0.9572470033, blue: 0.9572470033, alpha: 1)
        contentView.addSubview(sociaview)
        contentView.addSubview(bottomLine)
    }
    
    func setupView() -> CGFloat {
        contentView.height = sociaview.height
        sociaview.width = self.width
        return contentView.height
    }
}
