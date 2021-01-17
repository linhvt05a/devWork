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

protocol SearchAllJobDelegate: class {
    func gotoViewAllResult()
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
    weak var viewAllJobDelegate: SearchAllJobDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        setupView()
        tapToVC()
        searchJob.delegate = self
    }

    func setupView() {
        self.getTextField(searchJob: searchJob)
        containerView.cornerRadius = 8
        containerView.shadow = true
        containerView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 3, height: 3), shadowOpacity: 0.7, shadowRadius: 3,boderWidth: 2, boderColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), backGroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        
        jobLocationView.cornerRadius = 8
        jobLocationView.shadow = true
        jobLocationView.radius(shadowColor: UIColor.green.cgColor, shadowOffset: CGSize(width: 3, height: 3), shadowOpacity: 0.7, shadowRadius: 3, boderWidth: 1, boderColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), backGroundColor: #colorLiteral(red: 0.9794287141, green: 0.9794287141, blue: 0.9794287141, alpha: 1))
        
        jobTitleView.cornerRadius = 8
        jobTitleView.shadow = true
        jobTitleView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 3, height: 3), shadowOpacity: 0.7, shadowRadius: 4, boderWidth: 1, boderColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), backGroundColor: #colorLiteral(red: 0.9794287141, green: 0.9794287141, blue: 0.9794287141, alpha: 1))
        
        searchJobView.cornerRadius = 8
        searchJobView.shadow = true
        searchJobView.radius(shadowColor: UIColor.gray.cgColor, shadowOffset: CGSize(width: 3, height: 3), shadowOpacity: 0.7, shadowRadius: 4, boderWidth: 1, boderColor: #colorLiteral(red: 0.9794287141, green: 0.9794287141, blue: 0.9794287141, alpha: 1), backGroundColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
    }
    
    func tapToVC(){
        let taptoLocation = UITapGestureRecognizer(target: self, action: #selector(gotolocationVC))
        jobLocationView.addGestureRecognizer(taptoLocation)
        
        let taptoJobtitle = UITapGestureRecognizer(target: self, action: #selector(gotoJobVC))
        jobTitleView.addGestureRecognizer(taptoJobtitle)
        
        let tapToSearchView = UITapGestureRecognizer(target: self, action: #selector(gotoSearchVC))
        searchJobView.addGestureRecognizer(tapToSearchView)
    }
    
    @objc func gotolocationVC(){
        locationDelegate?.gotolocationVC()
    }
    
    @objc func gotoJobVC(){
        jobtitleDelegate?.gotoJobtitleVC()
    }
    
    @objc func gotoSearchVC(){
        viewAllJobDelegate?.gotoViewAllResult()
    }
    
}

extension SearchJobTableViewCell : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}

