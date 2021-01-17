//
//  JobInternTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobInternTableViewCell: UITableViewCell {
    
    let itemView = ItemJobView.loadViewFromXib()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.addSubview(itemView)
        
    }
    func setupView()-> CGFloat {
        return itemView.height
    }
}
