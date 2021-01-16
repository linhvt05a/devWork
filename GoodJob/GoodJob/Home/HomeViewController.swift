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
    let scrollView = ScrollableView.loadViewFromXib()
    let arr = ["","","","","","","","","","","","","","","","","","","",""]
    var currenIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        navigationItem.titleView = headerView
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        headerView.setupView(title: "Jobs News")
        headerView.leftBtn.addTarget(self, action: #selector(showProfile), for: .touchUpInside)
        headerView.rightBtn.addTarget(self, action: #selector(showLogin), for: .touchUpInside)
        config()
        startTimer()
    }
    
   
    func config(){
        view.addSubview(homeView)
        homeView.homeList.dataSource = self
        homeView.homeList.delegate = self
        homeView.registerCell()
        homeView.center = view.center
    }
    
    func startTimer() {
        let _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);

    }

    @objc func showProfile(){
        print("view profile")
    }
    @objc func showLogin(){
        print("vui long login")
    }
    
    @objc func scrollToNextCell(){

        if currenIndex < arr.count - 1 {
            currenIndex = currenIndex + 1
        }else {
            currenIndex = 0
        }
        scrollView.swiperView.scrollToItem(at: IndexPath(item: currenIndex, section: 0), at: .right, animated: true)

    }
}

extension HomeViewController : UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ScrollViewCollectionViewCell.self), for: indexPath) as! ScrollViewCollectionViewCell
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }
    
}

extension HomeViewController :UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 || section == 8 {
            return 1
        }
        else {
            return 2
        }
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SearchJobTableViewCell.self), for: indexPath) as! SearchJobTableViewCell
            cell.locationDelegate = self
            cell.jobtitleDelegate = self
            return cell
        }
        
        if indexPath.section == 1 {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobHotListTableViewCell.self), for: indexPath) as! JobHotListTableViewCell
        return cell
        }
        
        if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobFavoriteTableViewCell.self), for: indexPath) as! JobFavoriteTableViewCell
            return cell
        }
        
        if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobHightSalaryTableViewCell.self), for: indexPath) as! JobHightSalaryTableViewCell
            return cell
        }
        
        if indexPath.section == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobManagerTableViewCell.self), for: indexPath) as! JobManagerTableViewCell
            return cell
        }
        
        if indexPath.section == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobITTableViewCell.self), for: indexPath) as! JobITTableViewCell
            return cell
        }
        
        if indexPath.section == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobPartTimeTableViewCell.self), for: indexPath) as! JobPartTimeTableViewCell
            return cell
        }
        
        if indexPath.section == 7 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobInternTableViewCell.self), for: indexPath) as! JobInternTableViewCell
            return cell
        }
        
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: EmployerTableViewCell.self), for: indexPath) as! EmployerTableViewCell
            cell.setupView()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

extension HomeViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = SectionHeaderView.loadViewFromXib()
        if section == 1 {
            sectionView.setupView(letfIcon: "icons8-start-40", title: "VIỆC LÀM TỐT NHẤT", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        if section == 2 {
          
            sectionView.setupView(letfIcon: "icons8-heart-40", title: "VIỆC LÀM HẤP DẪN", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        
        if section == 3 {
            sectionView.setupView(letfIcon: "icons8-money-bag-40-fill", title: "VIỆC LÀM LƯƠNG CAO", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        
        if section == 4 {
            sectionView.setupView(letfIcon: "icons8-customer-insights-manager-40", title: "VIỆC LÀM QUẢN LÝ", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        
        if section == 5 {

            sectionView.setupView(letfIcon: "icons8-it-40", title: "VIÊC LÀM IT", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        
        if section == 6 {
            sectionView.setupView(letfIcon: "icons8-new-job-40", title: "VIỆC LÀM BÁN THỜI GIAN", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        
        if section == 7 {
            sectionView.setupView(letfIcon: "icons8-permanent-job-40 (1)", title: "TUYỂN THỰC TẬP SINH", nextTitle: "Xem thêm", arrowIcon: "icons8-double-right-40")
            return sectionView
        }
        
        if section == 8{
            sectionView.setupView(letfIcon: "icons8-flag-2-40", title: "NHÀ TUYỂN DỤNG NỔI BẬT", nextTitle: "", arrowIcon: "")
            return sectionView
        }
        else {
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
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



