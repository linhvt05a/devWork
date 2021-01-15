//
//  ScrollableView.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class ScrollableView: UIView {
    
    @IBOutlet weak var swiperView: UICollectionView!
    
    class func loadViewFromXib() -> ScrollableView {
        return Bundle.main.loadNibNamed("ScrollableView", owner: self, options: nil)?.first as! ScrollableView
    }
    
    func registerCell () {
        swiperView.register(UINib(nibName: String(describing: ScrollViewCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier:String(describing:ScrollViewCollectionViewCell.self))
    }
    
}
