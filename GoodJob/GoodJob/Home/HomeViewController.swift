//
//  HomeViewController.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

class HomeViewController: UIViewController {
    let headerView = HeaderView.loadViewFromXib()
    let homeView = HomeListView.loadViewFromXib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.titleView = headerView
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.sendSubviewToBack(headerView)
        
        headerView.setupView(title: "Jobs News")
        headerView.leftBtn.addTarget(self, action: #selector(showProfile), for: .touchUpInside)
        headerView.rightBtn.addTarget(self, action: #selector(showLogin), for: .touchUpInside)
        
        config()
        
        
    }
    func config(){
        view.addSubview(homeView)
        homeView.homeList.dataSource = self
        homeView.homeList.delegate = self
        homeView.registerCell()
    }
    
    @objc func showProfile(){
        print("view profile")
    }
    @objc func showLogin(){
        print("vui long login")
    }
   
}

extension HomeViewController :UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeTableViewCell.self), for: indexPath) as! HomeTableViewCell
            
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchJobTableViewCell.self), for: indexPath) as! SearchJobTableViewCell
            cell.locationDelegate = self
            cell.jobtitleDelegate = self
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension HomeViewController :UITableViewDelegate, SearchLocationDelegate, SearchJobTitleDelegate {
    func gotolocationVC() {
        print("location show vc")
    }
    
    func gotoJobtitleVC() {
        print("job name show vc")
    }
    
    
}


