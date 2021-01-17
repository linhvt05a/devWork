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
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        headerView.leftBtn.addTarget(self, action: #selector(popToVC), for: .touchUpInside)
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if jobTitle == "" && jobLocation == "" {
            headerView.setupView(title: "Tất cả việc làm liên quan", left: "icons8-left-arrow-40")
        }else{
            headerView.setupView(title: "Có 1234,0 việc làm \(jobTitle) tại \(jobLocation)", left: "icons8-left-arrow-40")
        }
    }
    class func create() -> JobResultViewController {
        return JobResultViewController(nibName: "JobResultViewController", bundle: nil)
    }
    
    @objc func popToVC(){
        navigationController?.popViewController(animated: true)
    }
}
