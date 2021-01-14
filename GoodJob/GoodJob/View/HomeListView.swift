//
//  HomeView.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

class HomeListView: UIView {
    
    @IBOutlet weak var homeList: UITableView!
    
    class func loadViewFromXib() -> HomeListView {
        return Bundle.main.loadNibNamed("HomeListView", owner: self, options: nil)?.first as! HomeListView
    }
    
    func registerCell() {
        homeList.separatorStyle = .none
        homeList.register(UINib(nibName: String(describing: HomeTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HomeTableViewCell.self))
        homeList.register(UINib(nibName: String(describing: SearchJobTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SearchJobTableViewCell.self))
    }

}
