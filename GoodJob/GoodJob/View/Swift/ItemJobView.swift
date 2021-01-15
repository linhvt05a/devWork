//
//  ItemJobView.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class ItemJobView: UIView {

    @IBOutlet weak var containerView: UIView!
    class func loadViewFromXib() ->ItemJobView {
        return Bundle.main.loadNibNamed("ItemJobView", owner: self, options: nil)?.first as! ItemJobView
    }

    
    func setupView(){
        
    }
}
