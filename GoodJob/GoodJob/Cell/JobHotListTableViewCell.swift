//
//  JobHotListTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobHotListTableViewCell: UITableViewCell {

    let view = ItemJobView.loadViewFromXib()
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.addSubview(view)
        contentView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        view.setupView()
    }
    
}
