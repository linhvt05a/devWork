//
//  ProfileAddTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 21/01/2021.
//

import UIKit
import SDWebImage

class ProfileAddTableViewCell: UITableViewCell {

    @IBOutlet weak var titles: UILabel!
    @IBOutlet weak var des: UILabel!
    @IBOutlet weak var imageUrl: UIImageView!
    
    @IBOutlet weak var addQuanlifi: UIButton!
    
    var professionID:Int?
    var professionTitle: String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    func setupData(_ data: Profession, _ index: Int){
        self.professionID = index
        self.professionTitle = data.title
        
        self.titles.text = data.title
        self.des.text = data.description
        self.imageUrl.sd_setImage(with: URL(string: data.imageUrl), placeholderImage: UIImage(named: "placeholder.png"))
        
        addQuanlifi.addTarget(self, action: #selector(add), for: .touchUpInside)
    }
    
    @objc func add(){
        let addSkillVC = AddSkillViewController.create()
        addSkillVC.professionTitle = professionTitle
        Navigate?.navigationController?.pushViewController(addSkillVC, animated: true)
    }
    
}
