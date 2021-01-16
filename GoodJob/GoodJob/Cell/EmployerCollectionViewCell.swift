//
//  EmployerCollectionViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class EmployerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var companyLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        contentView.cornerRadius = 8
        contentView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 1, height: 1), shadowOpacity: 0.8, shadowRadius: 2, boderWidth: 1, boderColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), backGroundColor: UIColor.white.cgColor)
    
    }
    
    func configImage(images: String){
        self.companyLogo.image = UIImage(named: images)
    }
}
