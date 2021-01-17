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
        
    }
    func setupView()-> CGFloat {
        return itemView.height
    }
   
}
