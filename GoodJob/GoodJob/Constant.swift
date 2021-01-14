//
//  Constant.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

extension UIView {
    func align(_ view: UIView) -> UILayoutGuide {
        let layoutGuide = view.safeAreaLayoutGuide
        return layoutGuide
    }
}

let MARGIN_SIZE = 5 as CGFloat
let W = UIScreen.main.bounds.width
let H = UIScreen.main.bounds.height

