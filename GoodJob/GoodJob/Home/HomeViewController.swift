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
        view.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
        
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView
    }
    
    
}

extension HomeViewController :UITableViewDelegate {
    
}
