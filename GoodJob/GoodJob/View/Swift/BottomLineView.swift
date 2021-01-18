//
//  BottomLineView.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class BottomLineView: UIView {

    class func loadViewFromXib() -> BottomLineView {
        return Bundle.main.loadNibNamed("BottomLineView", owner: self, options: nil)?.first as! BottomLineView
    }
    
}
