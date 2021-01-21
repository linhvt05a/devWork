//
//  AddSkillViewController.swift
//  GoodJob
//
//  Created by hoang on 21/01/2021.
//

import UIKit

class AddSkillViewController: UIViewController {
    
   
    let headerView = HeaderView.loadViewFromXib()
    
    var professionID:Int?
    var professionTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = headerView
        navigationItem.hidesBackButton = true
        headerView.setupView(title: professionTitle ?? "", left: "icons8-left-arrow-40", btnTitle: "")
        headerView.leftBtn.addTarget(self, action: #selector(popVC), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }

    @objc func popVC(){
        Navigate?.navigationController?.popViewController(animated: true)
    }
    
    class func create() -> AddSkillViewController{
        return AddSkillViewController(nibName: "AddSkillViewController", bundle: nil)
    }
}
