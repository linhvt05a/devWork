//
//  SupportAccountView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SupportAccountView: UIView {

    class func loadViewFromXib() -> SupportAccountView {
        return Bundle.main.loadNibNamed("SupportAccountView", owner: self, options: nil)?.first as! SupportAccountView
    }
    

}
