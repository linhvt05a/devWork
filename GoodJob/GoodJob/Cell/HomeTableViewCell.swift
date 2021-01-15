//
//  HomeTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        
        setupView()
    }

    func setupView(){
        containerView.cornerRadius = 8
        containerView.shadow = true
        containerView.radius(shadowColor: UIColor.green.cgColor, shadowOffset: CGSize(width: 3, height: 3), shadowOpacity: 0.7, shadowRadius: 3,boderWidth: 1, boderColor: UIColor.green.cgColor, backGroundColor: UIColor.white.cgColor)
    }
    
  
    
}
