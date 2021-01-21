//
//  VerifiedPhoneTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 20/01/2021.
//

import UIKit
import FirebaseCore

class VerifiedPhoneTableViewCell: UITableViewCell {
    @IBOutlet weak var tfPhone: UITextField!
    @IBOutlet weak var sendOTP: UIButton!
    @IBOutlet weak var txtRequire: UILabel!
     var otpVerifyVC = OTPverifiedViewController.create()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
        sendOTP.addTarget(self, action: #selector(getOTP), for: .touchUpInside)
        
    }
    
    @objc func getOTP(){
       
        Navigate?.navigationController?.pushViewController(otpVerifyVC, animated: true)
       
    }
    
   
}
