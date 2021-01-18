//
//  RegisterViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

class RegisterViewController: UIViewController {

    var rowHeight = 0 as CGFloat
    @IBOutlet weak var signupView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signupView.delegate = self
        signupView.dataSource = self
        signupView.register(UINib(nibName: String(describing: SignupTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SignupTableViewCell.self))
        // Do any additional setup after loading the view.
    }

    class func create() -> RegisterViewController {
        return RegisterViewController(nibName: "RegisterViewController", bundle: nil)
    }

}

extension RegisterViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SignupTableViewCell.self), for: indexPath) as! SignupTableViewCell
        rowHeight = cell.setupView()
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return rowHeight
    }
}
