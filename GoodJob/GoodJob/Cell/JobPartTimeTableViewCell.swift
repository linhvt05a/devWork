//
//  JobPartTimeTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobPartTimeTableViewCell: UITableViewCell {

    let itemView = ItemJobView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        itemView.setupView()
        // Initialization code
        contentView.addSubview(itemView)
    }
}
