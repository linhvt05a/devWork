//
//  RegisterTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 19/01/2021.
//

import UIKit

class RegisterTableViewCell: UITableViewCell {

    @IBOutlet weak var tfFullname: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    @IBOutlet weak var tfConfirm: UITextField!
    
    @IBOutlet weak var btnCheck: UIButton!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        
        btnRegister.addTarget(self, action: #selector(userRegister), for: .touchUpInside)
        btnLogin.addTarget(self, action: #selector(gotologinVc), for: .touchUpInside)
        
        btnCheck.addTarget(self, action: #selector(checkBox), for: .touchUpInside)
        btnCheck.setImage(UIImage(named: "icons8-unchecked-checkbox-26"), for: .normal)
        btnCheck.setImage(UIImage(named: "icons8-checked-checkbox-25"), for: .selected)
    }
   
    
    @objc func checkBox(){
        btnCheck.isSelected = !btnCheck.isSelected
    }
    
    
    @objc func userRegister(){
        print("fsjfhsdjfhs")
    }

    
    @objc func gotologinVc(){
        let loginVC = SignInViewController.create()
        UIApplication.topViewController()?.navigationController?.pushViewController(loginVC, animated: true)
    }
}
