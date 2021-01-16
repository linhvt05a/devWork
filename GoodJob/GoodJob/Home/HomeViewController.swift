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
    var rowHeight = 0 as CGFloat
    var arr = ["06577d261edb9ec","","","","","","","","","","","","","","","","","","",""]
    var currenIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9803065658, green: 0.9804469943, blue: 0.9802758098, alpha: 1)
        navigationItem.titleView = headerView
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        headerView.setupView(title: "Jobs News")
        headerView.leftBtn.addTarget(self, action: #selector(showProfile), for: .touchUpInside)
        headerView.rightBtn.addTarget(self, action: #selector(showLogin), for: .touchUpInside)
        config()
    }
    func config(){
        view.addSubview(homeView)
        homeView.center = view.center
        homeView.top = view.top
        homeView.height = view.height
        
        homeView.registerCell()
        homeView.homeList.dataSource = self
        homeView.homeList.delegate = self
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
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 || section == 9 || section == 1 {
            return 1
        }
        else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SliderTableViewCell.self), for: indexPath) as! SliderTableViewCell
            rowHeight = cell.configCell()
            return cell
        }
        
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchJobTableViewCell.self), for: indexPath) as! SearchJobTableViewCell
            cell.locationDelegate = self
            cell.jobtitleDelegate = self
            return cell
        }
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobHotListTableViewCell.self), for: indexPath) as! JobHotListTableViewCell
            return cell
        }
        
        if indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobFavoriteTableViewCell.self), for: indexPath) as! JobFavoriteTableViewCell
            return cell
        }
        
        if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobHightSalaryTableViewCell.self), for: indexPath) as! JobHightSalaryTableViewCell
            return cell
        }
        
        if indexPath.section == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobManagerTableViewCell.self), for: indexPath) as! JobManagerTableViewCell
            return cell
        }
        
        if indexPath.section == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobITTableViewCell.self), for: indexPath) as! JobITTableViewCell
            return cell
        }
        
        if indexPath.section == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobPartTimeTableViewCell.self), for: indexPath) as! JobPartTimeTableViewCell
            return cell
        }
        
        if indexPath.section == 8 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobInternTableViewCell.self), for: indexPath) as! JobInternTableViewCell
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EmployerTableViewCell.self), for: indexPath) as! EmployerTableViewCell
            cell.arr = arr
            rowHeight = cell.setupView()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 9 || indexPath.section == 0{
            return rowHeight
        }else{
            return UITableView.automaticDimension
        }
    }
    
}

extension HomeViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = SectionHeaderView.loadViewFromXib()
        sectionView.width = homeView.width
        if section == 2 {
            sectionView.setupView(letfIcon: "icons8-start-40", title: "VIỆC LÀM TỐT NHẤT", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 2)
            return sectionView
        }
        if section == 3 {
            
            sectionView.setupView(letfIcon: "icons8-heart-40", title: "VIỆC LÀM HẤP DẪN", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 3)
            return sectionView
        }
        
        if section == 4 {
            sectionView.setupView(letfIcon: "icons8-money-bag-40-fill", title: "VIỆC LÀM LƯƠNG CAO", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 4)
            return sectionView
        }
        
        if section == 5 {
            sectionView.setupView(letfIcon: "icons8-customer-insights-manager-40", title: "VIỆC LÀM QUẢN LÝ", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 5)
            return sectionView
        }
        
        if section == 6{
            
            sectionView.setupView(letfIcon: "icons8-it-40", title: "VIÊC LÀM IT", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 6)
            return sectionView
        }
        
        if section == 7 {
            sectionView.setupView(letfIcon: "icons8-new-job-40", title: "VIỆC LÀM BÁN THỜI GIAN", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 7)
            return sectionView
        }
        
        if section == 8 {
            sectionView.setupView(letfIcon: "icons8-permanent-job-40 (1)", title: "TUYỂN THỰC TẬP SINH", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40", index: 8)
            return sectionView
        }
        
        if section == 9{
            sectionView.setupView(letfIcon: "icons8-flag-2-40", title: "NHÀ TUYỂN DỤNG NỔI BẬT", nextTitle: "", arrowIcon: "", index: 9)
            return sectionView
        }
        else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 || section == 1{
            return 0
        }else {
            return 56
        }
    }
}

extension HomeViewController : SearchLocationDelegate, SearchJobTitleDelegate {
    func gotolocationVC() {
        print("location show vc")
    }
    
    func gotoJobtitleVC() {
        print("job name show vc")
    }  
}



