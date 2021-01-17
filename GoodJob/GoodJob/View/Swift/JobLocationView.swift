//
//  JobLocationView.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

class JobLocationView: UIView {

    class func loadViewFromNib() -> JobLocationView {
        return Bundle.main.loadNibNamed("JobLocationView", owner: self, options: nil)?.first as! JobLocationView
    }

}
