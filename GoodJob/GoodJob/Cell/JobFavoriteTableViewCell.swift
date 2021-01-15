//
//  JobFavoriteTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobFavoriteTableViewCell: UITableViewCell {

    let itemView = ItemJobView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.addSubview(itemView)
        itemView.height = contentView.height
    }
  
}
