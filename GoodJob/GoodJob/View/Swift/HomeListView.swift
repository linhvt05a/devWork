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
        homeList.showsVerticalScrollIndicator = false
       
        homeList.register(UINib(nibName: String(describing: SearchJobTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SearchJobTableViewCell.self))
        homeList.register(UINib(nibName: String(describing: JobHotListTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobHotListTableViewCell.self))
        homeList.register(UINib(nibName: String(describing: JobFavoriteTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobFavoriteTableViewCell.self))
        
        homeList.register(UINib(nibName: String(describing: JobHightSalaryTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobHightSalaryTableViewCell.self))
        
        homeList.register(UINib(nibName: String(describing: JobManagerTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobManagerTableViewCell.self))
        
        homeList.register(UINib(nibName: String(describing: JobITTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobITTableViewCell.self))
        
        homeList.register(UINib(nibName: String(describing: JobPartTimeTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobPartTimeTableViewCell.self))
        
        homeList.register(UINib(nibName: String(describing: JobInternTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobInternTableViewCell.self))
        
        homeList.register(UINib(nibName: String(describing: EmployerTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: EmployerTableViewCell.self))
    }

}
