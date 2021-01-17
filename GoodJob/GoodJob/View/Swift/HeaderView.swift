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
   
    func setupView(title: String, left: String){
        if title == "Select a location" || title == "Select a job title" || title.contains("việc làm") {
            rightBtn.isHidden = true
        }
        headerTitle.text = title
        leftBtn.width = MARGIN_SIZE*6
        leftBtn.height = leftBtn.width
        leftBtn.setImage(UIImage(named: left), for: .normal)
    }
    
    override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingExpandedSize
    }
    
}
