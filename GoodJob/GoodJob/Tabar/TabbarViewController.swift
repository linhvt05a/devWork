//
//  TabbarViewController.swift
//  GoodJob
//
//  Created by hoang on 17/01/2021.
//

import UIKit

class TabbarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTabar()
    }
    
    func setupTabar(){
        let tabar = UITabBarController()
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        UITabBar.appearance().unselectedItemTintColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        UITabBar.appearance().barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.03113237286)
        
        let Home = UINavigationController(rootViewController: HomeViewController())
        let Profile = UINavigationController(rootViewController: ProfileViewController())
        let History = UINavigationController(rootViewController: HistoryViewController())
        let Setting = UINavigationController(rootViewController: SettingViewController())
        tabar.setViewControllers([Home,Profile, History,Setting], animated: true)
        guard let items = tabar.tabBar.items else {
            return
        }
        let titles = ["","","",""]
        let images = ["icons8-job-seeker-40 (1)","icons8-add-administrator-40","icons8-history-book-40","icons8-inbox-settings-40"]
        
        for i in 0..<items.count {
            items[i].title = titles[i]
            items[i].image = UIImage(named: images[i])
        }
        tabar.modalPresentationStyle = .fullScreen
        present(tabar, animated: true, completion: nil)
    }
}
