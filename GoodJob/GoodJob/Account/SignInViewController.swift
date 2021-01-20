//
//  SignInViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signinView: UITableView!

    let headerView = HeaderView.loadViewFromXib()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        navigationItem.hidesBackButton = true
        
        headerView.setupView(title: "", left: "icons8-left-arrow-40", btnTitle: "")
        headerView.leftBtn.addTarget(self, action: #selector(backToHome), for: .touchUpInside)
        signinView.separatorStyle = .none
        signinView.showsVerticalScrollIndicator = false
        
        signinView.dataSource = self
        signinView.delegate = self
        signinView.register(UINib(nibName:String(describing: SignInTableViewCell.self), bundle: nil), forCellReuseIdentifier:String(describing: SignInTableViewCell.self))
    }

    class func create() -> SignInViewController {
        return SignInViewController(nibName: "SignInViewController", bundle: nil)
    }
    
    @objc func backToHome(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
   
}

extension SignInViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SignInTableViewCell.self), for: indexPath) as! SignInTableViewCell
        
        return cell
    }
    
    
}

extension SignInViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
