//
//  JobHotListTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobHotListTableViewCell: UITableViewCell {

    let listView = ItemJobView.loadViewFromXib()
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.addSubview(listView)
    }
    func setupView() -> CGFloat{
        return listView.height
    }
}
