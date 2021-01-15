//
//  ItemJobView.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class ItemJobView: UIView {
    @IBOutlet weak var containView: UIView!
    @IBOutlet weak var jobAvatar: UIImageView!
    @IBOutlet weak var jobName: UILabel!
    @IBOutlet weak var jobCompany: UILabel!
    @IBOutlet weak var jobSalary: UILabel!
    @IBOutlet weak var jobAddress: UILabel!
    
    @IBOutlet weak var containerView: UIView!
    class func loadViewFromXib() ->ItemJobView {
        return Bundle.main.loadNibNamed("ItemJobView", owner: self, options: nil)?.first as! ItemJobView
    }
    
    func setupView(){
        
    }
    
}
