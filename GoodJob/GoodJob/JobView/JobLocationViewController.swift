//
//  ViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

protocol SendDataLocationFieldDelegate{
    func sendLocation(location: LocationModel)
}

class JobLocationViewController: UIViewController {
    
    let headerView = HeaderView.loadViewFromXib()
    var delegate :SendDataLocationFieldDelegate?
    
    @IBOutlet weak var locationList: UITableView!
    
    let arr = ["HCM","DN","QN","QB"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.hidesBackButton = true
        
        headerView.setupView(title: "Select a location", left: "icons8-left-arrow-40")
        headerView.leftBtn.addTarget(self, action: #selector(popToVc), for: .touchUpInside)
        config()
    }
    func config(){
        locationList.dataSource = self
        locationList.delegate = self
        locationList.register(UINib(nibName: String(describing: LocationTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: LocationTableViewCell.self))
    }
    
    class func create() -> JobLocationViewController {
        return JobLocationViewController(nibName: "LocationViewController", bundle: nil)
    }
    
    @objc func popToVc(){
        navigationController?.popViewController(animated: true)
    }
}

extension JobLocationViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: LocationTableViewCell.self), for: indexPath) as! LocationTableViewCell
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.sendLocation(location: LocationModel(locID: 1, locName: arr[indexPath.row]))
    }
}

