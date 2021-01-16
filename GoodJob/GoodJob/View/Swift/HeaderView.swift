//
//  HeaderView.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

class HeaderView: UIView {
    
    @IBOutlet weak var leftBtn: UIButton!
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var rightBtn: UIButton!
    
    class func loadViewFromXib() -> HeaderView{
        return Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
    }
   
    func setupView(title: String){
        leftBtn.width = MARGIN_SIZE*6
        leftBtn.height = leftBtn.width
        leftBtn.layer.borderWidth = 1
        leftBtn.layer.borderColor = UIColor.red.cgColor
        leftBtn.layer.cornerRadius = leftBtn.height/2
        leftBtn.clipsToBounds = true
        leftBtn.isHidden = true
    }
    
    override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingExpandedSize
    } 
}
