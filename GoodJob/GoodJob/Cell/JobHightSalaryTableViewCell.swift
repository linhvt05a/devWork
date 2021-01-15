//
//  JobHightSalaryTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobHightSalaryTableViewCell: UITableViewCell {

  
    let itemView = ItemJobView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.addSubview(itemView)
        contentView.heightAnchor.constraint(equalTo: itemView.heightAnchor).isActive = true
    }

   
}
