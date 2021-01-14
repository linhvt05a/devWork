//
//  SearchJobTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

protocol SearchLocationDelegate: class {
    func gotolocationVC()
}

protocol SearchJobTitleDelegate: class {
    func gotoJobtitleVC()
}

class SearchJobTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var jobLocationView: UIView!
    @IBOutlet weak var jobTitleView: UIView!
    @IBOutlet weak var searchJobView: UIView!
    
    @IBOutlet weak var searchJob: UISearchBar!
    
    @IBOutlet weak var finderBestJob: UILabel!
    @IBOutlet weak var locationName: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    
    weak var locationDelegate: SearchLocationDelegate?
    weak var jobtitleDelegate: SearchJobTitleDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
        self.selectionStyle = .none
        setupView()
        let taptoLocation = UITapGestureRecognizer(target: self, action: #selector(gotolocationVC))
        jobLocationView.addGestureRecognizer(taptoLocation)
        
        let taptoJobtitle = UITapGestureRecognizer(target: self, action: #selector(gotoJobVC))
        jobTitleView.addGestureRecognizer(taptoJobtitle)
    }

   
    func setupView() {
        if let textfield = searchJob.value(forKey: "searchField") as? UITextField {
            textfield.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textfield.layer.borderWidth = 1
            textfield.layer.borderColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            textfield.layer.cornerRadius = 8
            textfield.layer.shadowOffset = CGSize(width: 2, height: 2)
            textfield.layer.shadowOpacity = 0.5
            textfield.layer.shadowRadius = 4
            textfield.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])

            if let leftView = textfield.leftView as? UIImageView {
                leftView.image = leftView.image?.withRenderingMode(.alwaysTemplate)
                leftView.tintColor = UIColor.gray
            }

        }
    }
    
    @objc func gotolocationVC(){
        locationDelegate?.gotolocationVC()
    }
    
    @objc func gotoJobVC(){
        jobtitleDelegate?.gotoJobtitleVC()
    }
    
}
