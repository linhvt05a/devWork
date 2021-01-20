//
//  OTPverifiedViewController.swift
//  GoodJob
//
//  Created by hoang on 20/01/2021.
//

import UIKit

class OTPverifiedViewController: UIViewController {
    private var headerView = HeaderView.loadViewFromXib()
    @IBOutlet weak var otpList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configNav()
        // Do any additional setup after loading the view.
    }
    
    func configNav(){
        navigationItem.titleView = headerView
        navigationItem.hidesBackButton = true
        headerView.setupView(title: "", left: "icons8-left-arrow-40", btnTitle: "")
        headerView.leftBtn.addTarget(self, action: #selector(backToOTP), for: .touchUpInside)
        config()
    }
    func config(){
        otpList.delegate = self
        otpList.dataSource = self
        otpList.showsVerticalScrollIndicator = false
        otpList.separatorStyle = .none
        otpList.register(UINib(nibName: String(describing: OTPVerifiedTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing:  OTPVerifiedTableViewCell.self))
    }
    
    @objc func backToOTP(){
         let phoneVC = ForgotPasswordViewController.create()
        Navigate?.navigationController?.pushViewController(phoneVC, animated: true)
    }
    
    class func create() -> OTPverifiedViewController{
        return OTPverifiedViewController(nibName: "OTPverifiedViewController", bundle: nil)
    }
}

extension OTPverifiedViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: OTPVerifiedTableViewCell.self), for: indexPath) as! OTPVerifiedTableViewCell
        cell.updateLabel()
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

