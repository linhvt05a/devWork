//
//  ButtonView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class ButtonView: UIView {

    class func loadViewFromXib() -> ButtonView {
        return Bundle.main.loadNibNamed("ButtonView", owner: self, options: nil)?.first as! ButtonView
    }
   
}
