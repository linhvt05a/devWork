//
//  SectionHeaderView.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class SectionHeaderView: UIView {

    @IBOutlet weak var sectionView: UIView!
    @IBOutlet weak var sectionIcon: UIImageView!
    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var viewMore: UIView!
    var tapID = 0
    @IBOutlet weak var btnViewMore: UIButton!
    
    class func loadViewFromXib() ->SectionHeaderView {
        return Bundle.main.loadNibNamed("SectionHeaderView", owner: self, options: nil)?.first as! SectionHeaderView
    }
    
    func setupView(letfIcon: String, title: String, nextTitle: String, arrowIcon: String, index: Int){

        sectionIcon.image = UIImage(named: letfIcon)
        sectionTitle.text = title
        tapID = index
        btnViewMore.addTarget(self, action: #selector(tabToViewMore), for: .touchUpInside)
        sectionView.cornerRadius = 8
        sectionView.shadow = true
        sectionView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 2, height: 2), shadowOpacity: 0.8, shadowRadius: 2, boderWidth: 1, boderColor: #colorLiteral(red: 0.1124466049, green: 0.4721173945, blue: 0.03169363058, alpha: 1), backGroundColor: #colorLiteral(red: 0.1124466049, green: 0.4721173945, blue: 0.03169363058, alpha: 1))
    }
   
    @objc func tabToViewMore(){
        print("kkkkkkkkk", tapID)
    }
    
}
