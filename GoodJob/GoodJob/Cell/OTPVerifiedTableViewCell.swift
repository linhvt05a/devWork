//
//  OTPVerifiedTableViewCell.swift
//  GoodJob
//
//  Created by hoang on 20/01/2021.
//

import UIKit

class OTPVerifiedTableViewCell: UITableViewCell {
   
    @IBOutlet weak var txtVerified: UILabel!
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var tf5: UITextField!
    @IBOutlet weak var tf6: UITextField!
    @IBOutlet weak var confirmOtp: UIButton!
    
    @IBOutlet weak var timeOut: UILabel!
    var count = 60
    var resendTimer = Timer()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
       
        tf1.delegate = self
        tf2.delegate = self
        tf3.delegate = self
        tf4.delegate = self
        tf5.delegate = self
        tf6.delegate = self
        
        self.tf1.addTarget(self, action: #selector(changeTextFirstResponse), for: .editingChanged)
        self.tf2.addTarget(self, action: #selector(changeTextFirstResponse), for: .editingChanged)
        self.tf3.addTarget(self, action: #selector(changeTextFirstResponse), for: .editingChanged)
        self.tf4.addTarget(self, action: #selector(changeTextFirstResponse), for: .editingChanged)
        self.tf5.addTarget(self, action: #selector(changeTextFirstResponse), for: .editingChanged)
        self.tf6.addTarget(self, action: #selector(changeTextFirstResponse), for: .editingChanged)
     
        
    
    }
    func updateLabel(){
        resendTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
       
    }
    
    @objc func update() {
         if(count > 0) {
             count = count - 1
            timeOut.text = "Thời gian còn lại: \(count) giây"
         }
         else {
             resendTimer.invalidate()
            let forgotVC = ForgotPasswordViewController.create()
            Navigate?.navigationController?.pushViewController(forgotVC, animated: true)
         }
     }
    @objc func changeTextFirstResponse(textField: UITextField){
        if textField.text?.utf8.count == 1 {
            switch textField {
            case tf1:
                tf2.becomeFirstResponder()
            case tf2:
                tf3.becomeFirstResponder()
            case tf3:
                tf4.becomeFirstResponder()
            case tf4:
                tf5.becomeFirstResponder()
            case tf5:
                tf6.becomeFirstResponder()
            case tf6:
                print("OTP: \(tf1.text!)\(tf2.text!)\(tf3.text!)\(tf4.text!)\(tf5.text!)\(tf6.text!)")
            default:
                break
            }
        }else if textField.text!.isEmpty {
            switch textField {
            case tf6:
                tf5.becomeFirstResponder()
            case tf5:
                tf4.becomeFirstResponder()
            case tf4:
                tf3.becomeFirstResponder()
            case tf3:
                tf2.becomeFirstResponder()
            case tf2:
                tf1.becomeFirstResponder()
            default:
                break
            }
        }
    }
    @IBAction func getVerifiedOTP(_ sender: Any) {
      
    }
    

}

extension OTPVerifiedTableViewCell: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text?.utf16.count == 1 && !string.isEmpty {
            return false
        }else {
            return true
        }
    }
}
