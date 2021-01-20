//
//  ViewController.swift
//  GoodJob
//
//  Created by hoang on 20/01/2021.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var phoneList: UITableView!
    let headerView = HeaderView.loadViewFromXib()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        configNavBar()
    }

    class func create() -> ForgotPasswordViewController {
        return ForgotPasswordViewController(nibName: "ForgotPasswordViewController", bundle: nil)
    }
}

extension ForgotPasswordViewController : UITableViewDataSource , UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: VerifiedPhoneTableViewCell.self), for: indexPath) as! VerifiedPhoneTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    private func configNavBar(){
        navigationItem.titleView = headerView
        navigationItem.hidesBackButton = true
        headerView.setupView(title: "", left: "icons8-left-arrow-40", btnTitle: "")
        headerView.leftBtn.addTarget(self, action: #selector(backLogin), for: .touchUpInside)
        configTv()
    }
   private func configTv() {
        phoneList.dataSource = self
        phoneList.delegate = self
    phoneList.showsVerticalScrollIndicator = false
    phoneList.separatorStyle = .none
    phoneList.register(UINib(nibName: String(describing: VerifiedPhoneTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: VerifiedPhoneTableViewCell.self))
    }
   
    
    @objc func backLogin() {
        let loginVC = SignInViewController.create()
        Navigate?.navigationController?.pushViewController(loginVC, animated: true)
    }
}
