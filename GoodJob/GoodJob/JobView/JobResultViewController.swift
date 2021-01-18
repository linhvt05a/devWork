//
//  JobResultViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

class JobResultViewController: UIViewController {
    
    let headerView = HeaderView.loadViewFromXib()
    
    var jobTitle = ""
    var jobLocation = ""
    
    var jobID:Int?
    var locID:Int?
    var textSearch: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        headerView.leftBtn.addTarget(self, action: #selector(popToVC), for: .touchUpInside)
        navigationItem.hidesBackButton = true
    
    }
    override func viewWillAppear(_ animated: Bool) {
        if jobTitle == "" && jobLocation == "" {
            headerView.setupView(title: "Tất cả việc làm bạn quan tâm", left: "icons8-left-arrow-40", btnTitle: "")
        }else{
            headerView.setupView(title: "Việc làm \(jobTitle) tại \(jobLocation)", left: "icons8-left-arrow-40", btnTitle: "")
        }
    }
    class func create() -> JobResultViewController {
        return JobResultViewController(nibName: "JobResultViewController", bundle: nil)
    }
    
    @objc func popToVC(){
        navigationController?.popViewController(animated: true)
    }
}
