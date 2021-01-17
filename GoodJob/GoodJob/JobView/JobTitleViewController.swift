//
//  JobTitleViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

protocol SendDataToVCDelegate: class {
    func sendData(major: MajorModel)
}

class JobTitleViewController: UIViewController {
    
    @IBOutlet weak var listJobTitle: UITableView!
    weak var delegate: SendDataToVCDelegate?
    let headerView = HeaderView.loadViewFromXib()
    let arr = ["IT-Phần mềm","IT-Phần cứng","Điện-Điện tử","Điện lạnh","Lao động phổ thông","Vệ sinh công nghiệp"]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationItem.hidesBackButton = true
        
        headerView.setupView(title: "Select a job title", left: "icons8-left-arrow-40")
        headerView.leftBtn.addTarget(self, action: #selector(popToVc), for: .touchUpInside)
        config()
    }
    
    func config(){
        listJobTitle.delegate = self
        listJobTitle.dataSource = self
        listJobTitle.register(UINib(nibName: String(describing: JobTitleTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: JobTitleTableViewCell.self))
    }
    
    class func create() -> JobTitleViewController {
        return JobTitleViewController(nibName: "JobTitleViewController", bundle: nil)
    }
    @objc func popToVc(){
        navigationController?.popViewController(animated: true)
    }

}

extension JobTitleViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: JobTitleTableViewCell.self), for: indexPath) as! JobTitleTableViewCell
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let location = MajorModel(majorID: 1, majorName: arr[indexPath.row])
        delegate?.sendData(major: location)
    }
}
