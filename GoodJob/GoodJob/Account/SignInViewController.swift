//
//  SignInViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signinView: UITableView!
    let rowHeight = 0 as CGFloat
    let headerView = HeaderView.loadViewFromXib()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        navigationItem.hidesBackButton = true
        headerView.setupView(title: "", left: "icons8-left-arrow-40", btnTitle: "")
        
        signinView.dataSource = self
        signinView.delegate = self
        signinView.register(UINib(nibName:String(describing: SignInTableViewCell.self), bundle: nil), forCellReuseIdentifier:String(describing: SignInTableViewCell.self))
    }

    class func create() -> SignInViewController {
        return SignInViewController(nibName: "SignInViewController", bundle: nil)
    }
    
   
}

extension SignInViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SignInTableViewCell.self), for: indexPath) as! SignInTableViewCell
        rowHeight = cell.setupView()
        return cell
    }
    
    
}

extension SignInViewController : UITableViewDelegate {
    
}
