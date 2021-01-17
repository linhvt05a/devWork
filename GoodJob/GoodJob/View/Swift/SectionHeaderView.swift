//
//  SectionHeaderView.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

protocol SendDataViewMoreDelegate: class {
    func sendData(typeID: Int, typeText: String)
}
class SectionHeaderView: UIView {

    @IBOutlet weak var sectionView: UIView!
    @IBOutlet weak var sectionIcon: UIImageView!
    @IBOutlet weak var sectionTitle: UILabel!
    @IBOutlet weak var viewMore: UIView!
    
    var typeID = 0
    var typeText = ""
    
    @IBOutlet weak var btnViewMore: UIButton!
    
    weak var delegate: SendDataViewMoreDelegate?
    
    class func loadViewFromXib() ->SectionHeaderView {
        return Bundle.main.loadNibNamed("SectionHeaderView", owner: self, options: nil)?.first as! SectionHeaderView
    }
    
    func setupView(letfIcon: String, title: String, nextTitle: String, arrowIcon: String, index: Int){
        
        sectionIcon.image = UIImage(named: letfIcon)
        sectionTitle.text = title
        typeID = index
        typeText = title
        sectionView.cornerRadius = 8
        sectionView.shadow = true
        sectionView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 2, height: 2), shadowOpacity: 0.8, shadowRadius: 2, boderWidth: 1, boderColor: #colorLiteral(red: 0.1124466049, green: 0.4721173945, blue: 0.03169363058, alpha: 1), backGroundColor: #colorLiteral(red: 0.1124466049, green: 0.4721173945, blue: 0.03169363058, alpha: 1))
        btnViewMore.addTarget(self, action: #selector(gotoViewMore), for: .touchUpInside)
        
        if index == 9 {
            btnViewMore.setTitle("", for: .normal)
        }else {
            btnViewMore.setTitle("Xem thêm", for: .normal)
        }
    }
   
    @objc func gotoViewMore(){
        delegate?.sendData(typeID: typeID, typeText: typeText)
    }
    
}
