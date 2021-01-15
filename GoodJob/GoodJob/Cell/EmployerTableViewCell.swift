//
//  Employer TableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class EmployerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var employerList: UICollectionView!
    var cellMarginsize: CGFloat = 12
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        employerList.backgroundColor = #colorLiteral(red: 0.9803065658, green: 0.9804469943, blue: 0.9802758098, alpha: 1)
        employerList.dataSource = self
        employerList.delegate = self
        employerList.register(UINib(nibName: String(describing: EmployerCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: EmployerCollectionViewCell.self))
        setupGridView()
    }
    func setupGridView(){
        let flow = employerList.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumLineSpacing = cellMarginsize
        flow.minimumInteritemSpacing = cellMarginsize
        flow.sectionInset = UIEdgeInsets(top: 0, left: cellMarginsize, bottom: 0, right: cellMarginsize)
    }
    
}


extension EmployerTableViewCell : UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: EmployerCollectionViewCell.self), for: indexPath) as! EmployerCollectionViewCell
        
        return cell
    }
    
    
    
    
}

extension EmployerTableViewCell : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let W = self.caculatorWidth()
        return CGSize(width: W, height: W)
    }
    func caculatorWidth() -> CGFloat {
        let sizeW = (W - 4 * cellMarginsize) / 2
        return sizeW
    }
}
