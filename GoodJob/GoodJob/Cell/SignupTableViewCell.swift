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
        contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        sociaview.txtTitle.text = "Đăng ký tài khoản"
        sociaview.setupView()

    }
    
    func setupView() -> CGFloat {
       
        contentView.height = sociaview.height + bottomLine.height
        contentView.addSubview(sociaview)
        sociaview.center = self.center
        sociaview.top = MARGIN_SIZE*4
       
        
        bottomLine.center = self.center
        bottomLine.top = sociaview.bottom + MARGIN_SIZE*4
        contentView.addSubview(bottomLine)
    
        
        return contentView.bottom
    }
}
