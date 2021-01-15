//
//  JobHightSalaryTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class JobHightSalaryTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    
    let itemView = ItemJobView.loadViewFromXib()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

   
}
