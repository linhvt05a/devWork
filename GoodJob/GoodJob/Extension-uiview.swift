//
//  Extension-uiview.swift
//  GoodJob
//
//  Created by hoang on 14/01/2021.
//

import UIKit

extension UIView
{
    
    var left:CGFloat
        {
        set(x)
        {
            var frame:CGRect=self.frame
            frame.origin.x=round(x)
            self.frame=frame
        }
        get
        {
            return self.frame.origin.x
        }
    }
    
    
    var top:CGFloat
        {
        set(y)
        {
            var frame:CGRect=self.frame
            frame.origin.y=round(y)
            self.frame=frame
        }
        get
        {
            return self.frame.origin.y
        }
    }
    
    
    var width:CGFloat
        {
        set(width)
        {
            var frame:CGRect=self.frame
            frame.size.width = round(width)
            self.frame = frame
        }
        get
        {
            return self.frame.size.width
        }
    }
    
    var height:CGFloat
        {
        set(height)
        {
            var frame:CGRect=self.frame
            frame.size.height = round(height)
            self.frame = frame
        }
        get
        {
            return self.frame.size.height
        }
    }
    
    var right:CGFloat
        {
        set(right)
        {
            var frame:CGRect=self.frame
            frame.origin.x = round(right-self.width)
            self.frame = frame
        }
        get
        {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    
    var bottom:CGFloat
        {
        set(bottom)
        {
            var frame:CGRect=self.frame
            frame.origin.y = round(bottom-self.height)
            self.frame = frame
        }
        get
        {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    @IBInspectable var shadow: Bool {
        get {
            return layer.shadowOpacity > 0.0
        }
        set {
            if newValue == true {
                self.addShadow()
            }
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue

            // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
            if shadow == false {
                self.layer.masksToBounds = true
            }
        }
    }
    
    func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
               shadowOffset: CGSize = CGSize(width: 2.0, height: 3.0),
               shadowOpacity: Float = 0.3,
               shadowRadius: CGFloat = 1.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }
    
}


extension UIView {
    
    func radius(shadowColor: CGColor,
                    shadowOffset: CGSize,
                    shadowOpacity: Float,
                    shadowRadius: CGFloat,
                    boderWidth: CGFloat,
                    boderColor: CGColor,
                    backGroundColor: CGColor
                    ){
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        layer.borderWidth = boderWidth
        layer.borderColor = boderColor
        layer.backgroundColor = backGroundColor
    }
    
    func getTextField(searchJob: UISearchBar) {
        if let textfield = searchJob.value(forKey: "searchField") as? UITextField {
            textfield.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textfield.layer.borderWidth = 1
            textfield.layer.borderColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            textfield.layer.cornerRadius = 8
            textfield.layer.shadowOffset = CGSize(width: 2, height: 2)
            textfield.layer.shadowOpacity = 0.5
            textfield.layer.shadowRadius = 4
            textfield.layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])

            if let leftView = textfield.leftView as? UIImageView {
                leftView.image = leftView.image?.withRenderingMode(.alwaysTemplate)
                leftView.tintColor = UIColor.gray
            }

        }
    }
    
}


