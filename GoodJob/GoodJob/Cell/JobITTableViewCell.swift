//
//  JobITTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobITTableViewCell: UITableViewCell {

    let itemView = ItemJobView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        itemView.setupView()
        // Initialization code
        contentView.addSubview(itemView)
    }
}
