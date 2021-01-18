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
    var arrVC :[UIViewController]?
    class func loadViewFromXib() -> HeaderView{
        return Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
    }
   
    func setupView(title: String, left: String, btnTitle: String){

        headerTitle.text = title
        leftBtn.width = MARGIN_SIZE*6
        leftBtn.height = leftBtn.width
        leftBtn.setImage(UIImage(named: left), for: .normal)
       
        rightBtn.setTitle(btnTitle, for: .normal)
        rightBtn.addTarget(self, action: #selector(forwardVC), for: .touchUpInside)
        
        leftBtn.addTarget(self, action: #selector(backHome), for: .touchUpInside)
    }
    
    override var intrinsicContentSize: CGSize {
        return UIView.layoutFittingExpandedSize
    }
    
    @objc func forwardVC(){
        let signIn = SignInViewController.create()
        UIApplication.topViewController()?.navigationController?.pushViewController(signIn, animated: true)
    }
    
    @objc func backHome() {
        UIApplication.topViewController()?.navigationController?.popViewController(animated: true)
    }

}
