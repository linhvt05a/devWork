//
//  JobHotListTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobHotListTableViewCell: UITableViewCell {
    
    let itemView = ItemJobView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        con.addSubview(itemView)
        itemView.height = containerView.height
    }
    
}
