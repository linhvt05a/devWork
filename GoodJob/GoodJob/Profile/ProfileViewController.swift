//
//  ProfileViewController.swift
//  GoodJob
//
//  Created by hoang on 18/01/2021.
//

import UIKit

struct Profession {
    var title: String
    var description: String
    var imageUrl: String
}
class ProfileViewController: UIViewController {

    let arr = [
        Profession(title: "Học vấn", description: "Nếu bạn đã có CV trên TopCV, bấm Cập nhật để hệ thống tự động điền phần này theo CV.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-education.png"),
        Profession(title: "Kinh nghiệm", description: "Nếu bạn đã có CV trên TopCV, bấm Cập nhật để hệ thống tự động điền phần này theo CV.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-experience.png"),
        Profession(title: "Kỹ năng", description: "Mô tả kỹ các kỹ năng bạn có giúp người khác hiểu được điểm mạnh của bạn và giúp gia tăng cơ hội kết nối với người khác.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-skills.png"),
        Profession(title: "Chứng chỉ", description: "Bạn có thể mô tả rõ hơn trong CV bằng cách chèn thêm ảnh chứng chỉ, bằng khen.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-certificate.png"),
        Profession(title: "Giải thưởng", description: "Bạn có thể mô tả rõ hơn trong CV bằng cách chèn thêm ảnh bằng khen.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-prize.png"),
        Profession(title: "Khóa học", description: "Bạn có thể ghi những khóa học ngắn hạn nổi bật đã tham gia.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-course.png"),
        Profession(title: "Dự án", description: "Bạn có thể mô tả rõ hơn trong CV bằng cách chèn thêm hình ảnh hoặc liên kết mô tả dự án.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-project.png"),
        Profession(title: "Sản phẩm", description: "Bạn có thể mô tả rõ hơn trong CV bằng cách chèn thêm ảnh, video giới thiệu về sản phẩm.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-product.png"),
        Profession(title: "Hoạt động xã hội & Tình nguyện", description: "Bạn có thể mô tả rõ hơn trong CV bằng cách chèn thêm nhiều hình ảnh sinh động về hoạt động đã tham gia.", imageUrl: "https://www.topcv.vn/v3/profile/profile-png/profile-volunteer.png")
    ]
    @IBOutlet weak var profileList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config(){
        profileList.delegate = self
        profileList.dataSource = self
        profileList.separatorStyle = .none
        profileList.showsVerticalScrollIndicator = false
        profileList.register(UINib(nibName: String(describing:ProfileTableViewCell.self ), bundle: nil), forCellReuseIdentifier: String(describing: ProfileTableViewCell.self))
        profileList.register(UINib(nibName: String(describing:ProfileAddTableViewCell.self ), bundle: nil), forCellReuseIdentifier: String(describing: ProfileAddTableViewCell.self))
    }
    class func create() -> ProfileViewController {
        return ProfileViewController(nibName: "ProfileViewController", bundle: nil)
    }
}

extension ProfileViewController: UITableViewDataSource , UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        else {
            return arr.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProfileTableViewCell.self), for: indexPath) as! ProfileTableViewCell
            
            return cell

        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ProfileAddTableViewCell.self), for: indexPath) as! ProfileAddTableViewCell
            let data = arr[indexPath.row]
            cell.setupData(data, indexPath.row)
            return cell

        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
