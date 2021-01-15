//
//  EmployerCollectionViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class EmployerCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        contentView.cornerRadius = 8
        contentView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 0.8, shadowRadius: 2, boderWidth: 1, boderColor: #colorLiteral(red: 0.08713726458, green: 0.5147089277, blue: 0.1000086486, alpha: 1), backGroundColor: UIColor.white.cgColor)
    
    }
    

}
