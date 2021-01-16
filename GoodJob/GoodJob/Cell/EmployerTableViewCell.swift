//
//  Employer TableViewCell.swift
//  GoodJob
//
//  Created by hoang on 15/01/2021.
//

import UIKit

class EmployerTableViewCell: UITableViewCell {
    
    var arr = [String]()
    var currenIndex = 0
    
    @IBOutlet weak var employerList: UICollectionView!
    
    var cellMarginsize: CGFloat = 10
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        employerList.backgroundColor = #colorLiteral(red: 0.9803065658, green: 0.9804469943, blue: 0.9802758098, alpha: 1)
        
        employerList.dataSource = self
        employerList.delegate = self
        
        employerList.register(UINib(nibName: String(describing: EmployerCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: EmployerCollectionViewCell.self))
        setupGridView()
        startTimer()
    }
    
    func setupView() -> CGFloat{
        return caculatorWidth()
    }
    
    func setupGridView(){
        let flow = employerList.collectionViewLayout as! UICollectionViewFlowLayout
        flow.minimumLineSpacing = cellMarginsize
        flow.minimumInteritemSpacing = cellMarginsize
        flow.sectionInset = UIEdgeInsets(top: 0, left: cellMarginsize, bottom: 0, right: cellMarginsize)
    }
    
    func startTimer() {
        let _ = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);

    }
    @objc func scrollToNextCell(){

        if currenIndex < arr.count - 1 {
            currenIndex = currenIndex + 1
        }else {
            currenIndex = 0
        }
        employerList.scrollToItem(at: IndexPath(item: currenIndex, section: 0), at: .right, animated: true)

    }
}


extension EmployerTableViewCell : UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: EmployerCollectionViewCell.self), for: indexPath) as! EmployerCollectionViewCell
        cell.configImage(images: arr[indexPath.row])
        return cell
    }
    
    
    
    
}

extension EmployerTableViewCell : UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let W = self.caculatorWidth()
        return CGSize(width: W, height: W)
    }
    func caculatorWidth() -> CGFloat {
        let sizeW = (employerList.bounds.size.width - MARGIN_SIZE*4 * cellMarginsize) / 2
        return sizeW
    }
}
